// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Artive';

  @override
  String get artworks => 'Obras';

  @override
  String get addArtwork => 'Adicionar obra';

  @override
  String get editArtwork => 'Editar obra';

  @override
  String get deleteArtwork => 'Excluir obra';

  @override
  String get name => 'Nome';

  @override
  String get description => 'Descrição';

  @override
  String get descriptionOptional => 'Descrição (opcional)';

  @override
  String get date => 'Criado em';

  @override
  String get month => 'Mês';

  @override
  String get year => 'Ano';

  @override
  String get dimension => 'Dimensão';

  @override
  String get dimensionHint => 'ex., 50x70 cm';

  @override
  String get medium => 'Técnica';

  @override
  String get mediumHint => 'ex., Óleo sobre tela';

  @override
  String get images => 'Imagens';

  @override
  String get addImage => 'Adicionar imagem';

  @override
  String get photo => 'Principal';

  @override
  String get reference => 'Foto referência';

  @override
  String get scan => 'Digitalização';

  @override
  String get save => 'Salvar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get delete => 'Excluir';

  @override
  String get confirmDelete => 'Tem certeza que deseja excluir esta obra?';

  @override
  String get confirmDeleteImage => 'Tem certeza que deseja excluir esta imagem?';

  @override
  String get yes => 'Sim';

  @override
  String get no => 'Não';

  @override
  String get settings => 'Configurações';

  @override
  String get language => 'Idioma';

  @override
  String get about => 'Sobre';

  @override
  String get version => 'Versão';

  @override
  String get search => 'Pesquisar';

  @override
  String get searchHint => 'Pesquisa exata';

  @override
  String get noArtworks => 'Nenhuma obra ainda';

  @override
  String get noArtworksHint => 'Toque em + para adicionar sua primeira obra';

  @override
  String get loading => 'Carregando...';

  @override
  String get error => 'Erro';

  @override
  String get retry => 'Tentar novamente';

  @override
  String get uploadingImage => 'Enviando imagem...';

  @override
  String get imageUploaded => 'Imagem enviada';

  @override
  String get imageFailed => 'Falha ao enviar imagem';

  @override
  String get artworkSaved => 'Obra salva';

  @override
  String get artworkDeleted => 'Obra excluída';

  @override
  String get requiredField => 'Este campo é obrigatório';

  @override
  String get invalidYear => 'Por favor, insira um ano válido';

  @override
  String get invalidMonth => 'Por favor, insira um mês entre 1 e 12';

  @override
  String get selectImageTag => 'Selecione o tipo de imagem';

  @override
  String get gallery => 'Galeria';

  @override
  String get camera => 'Câmera';

  @override
  String get selectSource => 'Selecione a origem da imagem';

  @override
  String get id => 'ID';

  @override
  String get createdAt => 'Enviado em';

  @override
  String get filterByMedium => 'Filtrar por técnica';

  @override
  String get filterByYear => 'Filtrar por ano';

  @override
  String get allMedia => 'Todas as técnicas';

  @override
  String get allYears => 'Todos os anos';

  @override
  String get sortBy => 'Ordenar por';

  @override
  String get sortByName => 'Nome';

  @override
  String get sortByDate => 'Data';

  @override
  String get sortByCreated => 'Criação';

  @override
  String get ascending => 'Crescente';

  @override
  String get descending => 'Decrescente';

  @override
  String get back => 'Voltar';

  @override
  String get close => 'Fechar';

  @override
  String get copy => 'Copiar';

  @override
  String get skip => 'Pular';

  @override
  String get done => 'Concluído';

  @override
  String get reset => 'Redefinir';

  @override
  String get cloudConnection => 'Conexão na Nuvem';

  @override
  String get cloudConnectionSubtitle => 'Reconfigurar conexão Supabase';

  @override
  String get resetCloudConnection => 'Redefinir Conexão na Nuvem';

  @override
  String get resetCloudConnectionMessage => 'Isso desconectará o app do seu projeto Supabase. Você precisará executar o assistente de configuração novamente.\n\nSeus dados no Supabase NÃO serão excluídos.';

  @override
  String get restartToReconfigure => 'Por favor, reinicie o app para reconfigurar';

  @override
  String get databasePaused => 'Banco de Dados Pausado';

  @override
  String get databasePausedMessage => 'Seu projeto Supabase está pausado por inatividade.\n\nPara restaurar:\n1. Acesse supabase.com/dashboard\n2. Selecione seu projeto\n3. Clique em \"Restaurar projeto\"\n\nIsso leva cerca de 1 minuto.';

  @override
  String get setupTitle => 'Configuração do Artive';

  @override
  String get setupWelcome => 'Bem-vindo ao Artive!';

  @override
  String get setupWelcomeDescription => 'Este assistente ajudará você a configurar o armazenamento em nuvem para seu catálogo de obras.\n\nSuas obras e imagens serão armazenadas com segurança no Supabase, uma plataforma de nuvem gratuita.\n\nA configuração leva cerca de 5 minutos.';

  @override
  String get setupWhatIsSupabase => 'O que é Supabase?';

  @override
  String get setupWhatIsSupabaseContent => 'Supabase é um serviço de backend gratuito e de código aberto. Ele fornece banco de dados e armazenamento de arquivos para seu app.';

  @override
  String get setupYourData => 'Seus Dados, Seu Controle';

  @override
  String get setupYourDataContent => 'Você cria sua própria conta Supabase. Seus dados pertencem a você e somente você tem acesso.';

  @override
  String get setupGetStarted => 'Começar';

  @override
  String get setupStep1Title => 'Passo 1: Criar um Projeto Supabase';

  @override
  String get setupStep1_1 => 'Acesse supabase.com e crie uma conta gratuita';

  @override
  String get setupOpenSupabase => 'Abrir Supabase';

  @override
  String get setupStep1_2 => 'Clique em \"Novo Projeto\" no painel';

  @override
  String get setupStep1_3 => 'Escolha um nome para seu projeto (ex. \"Artive\")';

  @override
  String get setupStep1_4 => 'Defina uma senha segura para o banco (guarde-a!)';

  @override
  String get setupStep1_5 => 'Selecione uma região próxima a você';

  @override
  String get setupStep1_6 => 'Clique em \"Criar novo projeto\" e aguarde';

  @override
  String get setupFreeTier => 'Plano Gratuito';

  @override
  String get setupFreeTierContent => 'O plano gratuito do Supabase inclui 500MB de banco de dados e 1GB de armazenamento de arquivos - suficiente para milhares de obras!';

  @override
  String get setupProjectCreated => 'Projeto Criado';

  @override
  String get setupStep2Title => 'Passo 2: Obter Suas Credenciais';

  @override
  String get setupStep2_1 => 'No seu projeto Supabase, vá para \"Configurações do Projeto\" (ícone de engrenagem)';

  @override
  String get setupStep2_2 => 'Clique em \"Data API\" no menu de configurações';

  @override
  String get setupStep2_3 => 'Encontre \"Project URL\" - parece com: https://xxxxx.supabase.co';

  @override
  String get setupStep2_4 => 'Encontre a chave \"anon\" em \"Project API keys\"';

  @override
  String get setupAboutApiKeys => 'Sobre Chaves de API';

  @override
  String get setupAboutApiKeysContent => 'A chave anon é segura para apps. Ela funciona com políticas de Row Level Security.';

  @override
  String get setupCredentialsTip => 'Dica: Você pode clicar no botão de copiar ao lado de cada valor no Supabase.';

  @override
  String get setupIHaveCredentials => 'Tenho Minhas Credenciais';

  @override
  String get setupStep3Title => 'Passo 3: Inserir Suas Credenciais';

  @override
  String get setupProjectUrl => 'URL do Projeto';

  @override
  String get setupAnonKey => 'Chave Anon';

  @override
  String get setupValidateAndContinue => 'Validar e Continuar';

  @override
  String get setupStep4Title => 'Passo 4: Configuração do Banco de Dados';

  @override
  String get setupManualSetupRequired => 'Configuração Manual Necessária';

  @override
  String get setupDatabaseManualContent => 'As tabelas do banco de dados precisam ser criadas manualmente. Esta é uma configuração única.';

  @override
  String get setupStep4_1 => 'No Supabase, vá para \"SQL Editor\" na barra lateral';

  @override
  String get setupStep4_2 => 'Clique em \"Nova consulta\"';

  @override
  String get setupStep4_3 => 'Copie e cole o seguinte SQL:';

  @override
  String get setupStep4_4 => 'Clique em \"Executar\" para executar a consulta';

  @override
  String get setupStep4_5 => 'Você deve ver \"Sucesso. Nenhuma linha retornada\"';

  @override
  String get setupSqlCopied => 'SQL copiado para a área de transferência';

  @override
  String get setupCheckingDatabase => 'Verificando banco de dados...';

  @override
  String get setupIveRunSql => 'Executei o SQL';

  @override
  String get setupCheckDatabase => 'Verificar Banco de Dados';

  @override
  String get setupStep5Title => 'Passo 5: Configuração de Armazenamento';

  @override
  String get setupStorageManualContent => 'Crie o bucket de armazenamento para suas imagens de obras.';

  @override
  String get setupStep5_1 => 'No Supabase, vá para \"Storage\" na barra lateral';

  @override
  String get setupStep5_2 => 'Clique em \"Novo bucket\"';

  @override
  String get setupStep5_3 => 'Nomeie exatamente: artworks';

  @override
  String get setupStep5_4 => 'Deixe \"Bucket público\" DESATIVADO (recomendado)';

  @override
  String get setupStep5_5 => 'Clique em \"Criar bucket\"';

  @override
  String get setupAddStoragePolicy => 'Adicionar Política de Armazenamento';

  @override
  String get setupAddStoragePolicyContent => 'Clique no bucket → Políticas → Nova Política → \"Para personalização completa\" → Nome: allow_all → Marque todas as operações → Salvar.';

  @override
  String get setupSettingUpStorage => 'Configurando armazenamento...';

  @override
  String get setupSetupStorage => 'Configurar Armazenamento';

  @override
  String get setupComplete => 'Configuração Concluída!';

  @override
  String get setupCompleteDescription => 'Artive está agora conectado ao seu projeto Supabase.\n\nVocê pode começar a adicionar suas obras!';

  @override
  String get setupQuickTips => 'Dicas Rápidas';

  @override
  String get setupQuickTipsContent => '• Toque em + para adicionar sua primeira obra\n• Adicione várias imagens com diferentes tags (principal, referência, digitalização)\n• Use busca e filtros para encontrar obras rapidamente\n• Mude o idioma nas Configurações';

  @override
  String get setupStartUsing => 'Começar a Usar Artive';

  @override
  String get openInBrowser => 'Abrir no Navegador';

  @override
  String get couldNotOpenBrowser => 'Não foi possível abrir o navegador automaticamente. Por favor, copie esta URL e abra manualmente:';

  @override
  String get urlCopied => 'URL copiada para a área de transferência';

  @override
  String get backupRestore => 'Backup e restauração';

  @override
  String get backupRestoreSubtitle => 'Exporte ou importe seus dados';

  @override
  String get createBackup => 'Criar backup';

  @override
  String get createBackupDescription => 'Exporte todas as suas obras e imagens para um arquivo ZIP que você pode salvar ou compartilhar.';

  @override
  String get restoreBackup => 'Restaurar backup';

  @override
  String get restoreBackupDescription => 'Importe obras e imagens de um arquivo de backup criado anteriormente.';

  @override
  String get restoreBackupConfirm => 'Como você gostaria de restaurar o backup?';

  @override
  String get restoreMerge => 'Mesclar com existentes';

  @override
  String get restoreReplace => 'Substituir tudo';

  @override
  String get backupCreated => 'Backup criado com sucesso';

  @override
  String restoreComplete(int count) {
    return '$count obras restauradas';
  }

  @override
  String get backupNote => 'Os backups incluem todos os dados de obras e imagens. Armazene-os com segurança!';

  @override
  String itemsSelected(int count) {
    return '$count selecionados';
  }

  @override
  String confirmDeleteMultiple(int count) {
    return 'Excluir $count obra(s)?';
  }

  @override
  String artworksDeleted(int count) {
    return '$count obra(s) excluída(s)';
  }

  @override
  String get selectAll => 'Selecionar tudo';
}
