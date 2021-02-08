import 'package:get/get.dart';

import 'package:gss/app/modules/auth/bindings/auth_binding.dart';
import 'package:gss/app/modules/auth/views/auth_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.AUTH,
      page: () => AuthView(),
      binding: AuthBinding(),
    ),
  ];
}
