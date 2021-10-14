import 'package:flutter_sample/pages/home/home_binding.dart';
import 'package:flutter_sample/pages/home/home_page.dart';
import 'package:flutter_sample/pages/unknown/unknown_binding.dart';
import 'package:flutter_sample/pages/welcome/welcome_binding.dart';
import 'package:flutter_sample/pages/welcome/welcome_page.dart';
import 'package:get/get.dart';
import 'app_routes.dart';
import 'package:flutter_sample/pages/unknown/unknown_page.dart';

class AppPages {
  static final initialRoute = AppRoutes.home;
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
  ];
}
