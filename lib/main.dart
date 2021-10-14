import 'package:flutter/material.dart';
import 'package:flutter_sample/common/local_translations.dart';
import 'package:flutter_sample/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:flutter_sample/di.dart';

import 'common/utils/storage_utils.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // init storage service
  await DenpendencyInjection.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppPages.initialRoute,
      getPages: AppPages.routes,
      unknownRoute: AppPages.unknownRoute,
      // setup language
      translations: LocalTranslations(),
      locale: getCurrentLanguage(),
      fallbackLocale: Locale('en', ''),
    );
  }

  Locale getCurrentLanguage() {
    // get current language
    String? currentLanguage = StorageUtils().getLanguage();
    if (currentLanguage != null) {
      if (currentLanguage == 'chinese') {
        return Locale('zh', 'CN');
      }
    }
    return Locale('en', '');
  }
}
