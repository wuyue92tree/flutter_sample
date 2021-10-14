import 'package:get/get.dart';

class LocalTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'zh_CN': {
          'english': '英文',
          'chinese': '中文',
          'languageChange': '字体切换',
          'language change': '字体切换',
          'Unknown Page': '未知页面',
          'themeChange': '主题切换',
          'theme change': '主题切换',
          'follow system': '跟随系统',
          'light mode': '明亮模式',
          'dark mode': '深色模式',
          'Flutter Sample': 'Flutter 示例',
          'Welcome: ': '欢迎：',
          'skip': '跳过',
          'Home Page': '首页',
        },
      };
}
