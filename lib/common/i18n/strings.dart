/// 翻译的数据集
abstract class AppTranslation {
  static Map<String, Map<String, String>> translations = {
    'en_EN': Locales.en_EN,
    'zh_CN': Locales.zh_CN,
  };
}

/// 资源id
abstract class LocaleKeys {
  static const change_zh = 'change_zh-CN';
  static const change_en = 'change_en_EN';
}

/// 资源内容
abstract class Locales {
  static const en_EN = {
    LocaleKeys.change_zh: 'change Chinese',
    LocaleKeys.change_en: 'change English',
  };
  static const zh_CN = {
    LocaleKeys.change_zh: '切换中文',
    LocaleKeys.change_en: '切换英文',
  };
}