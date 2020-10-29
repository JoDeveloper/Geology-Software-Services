import 'package:get/get.dart';

import '../modules/home/home_binfing.dart';
import '../modules/home/home_page.dart';
import '../modules/splash/splash_binding.dart';
import '../modules/splash/splash_page.dart';
import 'app_routes.dart';

mixin AppPages {
  static final routes = <GetPage>[
    GetPage(
      name: Routes.INITIAL,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    )
  ];
}
