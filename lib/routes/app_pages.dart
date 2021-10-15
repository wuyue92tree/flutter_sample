import 'package:flutter_sample/pages/home/home_binding.dart';
import 'package:flutter_sample/pages/home/home_page.dart';
import 'package:flutter_sample/pages/setting/language_change/language_change_binding.dart';
import 'package:flutter_sample/pages/setting/language_change/language_change_page.dart';
import 'package:flutter_sample/pages/setting/setting_binding.dart';
import 'package:flutter_sample/pages/setting/setting_page.dart';
import 'package:flutter_sample/pages/setting/theme_change/theme_change_binding.dart';
import 'package:flutter_sample/pages/setting/theme_change/theme_change_page.dart';
import 'package:flutter_sample/pages/unknown/unknown_binding.dart';
import 'package:flutter_sample/pages/welcome/welcome_binding.dart';
import 'package:flutter_sample/pages/welcome/welcome_page.dart';
import 'package:get/get.dart';
import 'app_routes.dart';
import 'package:flutter_sample/pages/unknown/unknown_page.dart';

class AppPages {
  static final initialRoute = AppRoutes.welcome;
  static final unknownRoute = GetPage(
    name: AppRoutes.unknown,
    page: () => (UnknownPage()),
    binding: UnknownBinding(),
  );
  static List<GetPage> routes = [
    GetPage(
      name: AppRoutes.welcome,
      page: () => WelcomePage(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.setting,
      page: () => SettingPage(),
      binding: SettingBinding(),
      children: [
        GetPage(
          name: AppRoutes.languageChange.replaceAll(AppRoutes.setting, ''),
          page: () => LanguageChangePage(),
          binding: LanguageChangeBinding(),
        ),
        GetPage(
          name: AppRoutes.themeChange.replaceAll(AppRoutes.setting, ''),
          page: () => ThemeChangePage(),
          binding: ThemeChangeBinding(),
        ),
      ],
    ),
  ];
}
