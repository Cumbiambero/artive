import 'dart:ui' as ui;
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

Locale _resolveSystemLocale() {
  final systemLocale = ui.PlatformDispatcher.instance.locale;
  for (var supported in LocaleProvider.supportedLocales) {
    if (supported.languageCode == systemLocale.languageCode) {
      return supported;
    }
  }
  return const Locale('en');
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ArtiveApp());
}

class ArtiveApp extends StatefulWidget {
  const ArtiveApp({super.key});

  @override
  State<ArtiveApp> createState() => _ArtiveAppState();
}

class _ArtiveAppState extends State<ArtiveApp> with WidgetsBindingObserver {
  bool _isLoading = true;
  bool _isSetupComplete = false;
  AppConfig? _config;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _checkSetup();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _disposeSupabase();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.detached) {
      _disposeSupabase();
    }
  }

  Future<void> _disposeSupabase() async {
    try {
      await Supabase.instance.dispose();
    } catch (_) {
      // Ignore if not initialized
    }
  }

  Future<void> _checkSetup() async {
    try {
      final isComplete = await SetupService.isSetupComplete();
      final credentials = await SetupService.getSavedCredentials();

      if (isComplete && credentials != null) {
        try {
          // Always try to initialize - Supabase.initialize handles already-initialized case
          await Supabase.initialize(
            url: credentials['url']!,
            anonKey: credentials['anonKey']!,
          );
        } catch (e) {
          // Ignore "already initialized" errors, they're expected on hot restart
          if (!e.toString().contains('already been initialized')) {
            rethrow;
          }
        }
        
        try {
          _config = await AppConfig.load();
        } catch (e) {
          _config = AppConfig.defaults();
        }
        
        if (mounted) {
          setState(() {
            _isSetupComplete = true;
            _isLoading = false;
          });
        }
      } else {
        if (mounted) {
          setState(() {
            _isSetupComplete = false;
            _isLoading = false;
          });
        }
      }
    } catch (e) {
      // If there's any error during setup check, reset to setup wizard
      try {
        await SetupService.resetSetup();
      } catch (_) {
        // Ignore reset errors
      }
      if (mounted) {
        setState(() {
          _isSetupComplete = false;
          _isLoading = false;
        });
      }
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
      final resolvedLocale = _resolveSystemLocale();
      return MaterialApp(
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
        locale: resolvedLocale,
        supportedLocales: LocaleProvider.supportedLocales,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
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
          home: HomeScreen(bucketName: config.storage.bucketName),
        ),
      ),
    );
  }
}
