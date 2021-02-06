import 'package:get/get.dart';

import '../../routes/app_routes.dart';

class SplashController extends GetxController {
  final year = DateTime.now().year;
  @override
  void onInit() {
    Future.delayed(25.minutes).then(
      (value) => Get.offAndToNamed(Routes.HOME),
    );
    super.onInit();
  }
}
