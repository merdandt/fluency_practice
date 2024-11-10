enum Language {
  spanish('es', 'Español'),
  english('en', 'English'),
  hindi('hi', 'हिन्दी'),
  japanese('ja', '日本語'),
  russian('ru', 'Русский'),
  ukrainian('uk', 'Українська'),
  swedish('sv', 'Svenska'),
  chinese('zh', '中文'),
  portuguese('pt', 'Português'),
  dutch('nl', 'Nederlands'),
  turkish('tr', 'Türkçe'),
  french('fr', 'Français'),
  german('de', 'Deutsch'),
  indonesian('id', 'Bahasa Indonesia'),
  korean('ko', '한국어'),
  italian('it', 'Italiano');

  final String code;
  final String nativeName;

  const Language(this.code, this.nativeName);
}
