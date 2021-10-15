import 'package:flutter_sample/common/utils/storage_utils.dart';
import 'package:get/get.dart';

class SettingController extends GetxController {
  RxBool enableWelcomePage = true.obs;

  @override
  void onReady() {
    super.onReady();
    if (StorageUtils().getEnableWelcomePage() != null) {
      enableWelcomePage.value = StorageUtils().getEnableWelcomePage()!;
    }
  }

  void welcomePageSwitchOnChanged() {
    StorageUtils().setEnableWelcomePage(enableWelcomePage.value);
  }
}
