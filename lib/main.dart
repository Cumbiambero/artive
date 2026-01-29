import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'core/config/app_config.dart';
import 'core/providers/providers.dart';
import 'core/repositories/repositories.dart';
import 'core/services/services.dart';
import 'l10n/app_localizations.dart';
import 'ui/screens/screens.dart';
import 'ui/screens/setup_wizard_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ArtiveApp());
}

class ArtiveApp extends StatefulWidget {
  const ArtiveApp({super.key});

  @override
  State<ArtiveApp> createState() => _ArtiveAppState();
}

class _ArtiveAppState extends State<ArtiveApp> {
  bool _isLoading = true;
  bool _isSetupComplete = false;
  AppConfig? _config;

  @override
  void initState() {
    super.initState();
    _checkSetup();
  }

  Future<void> _checkSetup() async {
    final isComplete = await SetupService.isSetupComplete();
    final credentials = await SetupService.getSavedCredentials();

    if (isComplete && credentials != null) {
      try {
        await Supabase.initialize(
          url: credentials['url']!,
          anonKey: credentials['anonKey']!,
        );
        _config = await AppConfig.load();
        setState(() {
          _isSetupComplete = true;
          _isLoading = false;
        });
      } catch (e) {
        await SetupService.resetSetup();
        setState(() {
          _isSetupComplete = false;
          _isLoading = false;
        });
      }
    } else {
      setState(() {
        _isSetupComplete = false;
        _isLoading = false;
      });
    }
  }

  void _onSetupComplete() {
    setState(() => _isLoading = true);
    _checkSetup();
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Scaffold(
          body: Center(child: CircularProgressIndicator()),
        ),
      );
    }

    if (!_isSetupComplete) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SetupWizardScreen(onSetupComplete: _onSetupComplete),
      );
    }

    final client = Supabase.instance.client;
    final config = _config ?? AppConfig.defaults();
    final artworkRepo = ArtworkRepository(client);
    final imageRepo = ImageRepository(client);
    final storageService = StorageService(client, config.storage);

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LocaleProvider()..loadLocale()),
        ChangeNotifierProvider(
          create: (_) => ArtworkProvider(artworkRepo, imageRepo, storageService),
        ),
      ],
      child: Consumer<LocaleProvider>(
        builder: (_, localeProvider, __) => MaterialApp(
          title: 'Artive',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple,
              brightness: Brightness.dark,
            ),
            useMaterial3: true,
          ),
          locale: localeProvider.locale,
          supportedLocales: LocaleProvider.supportedLocales,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          home: const HomeScreen(),
        ),
      ),
    );
  }
}
