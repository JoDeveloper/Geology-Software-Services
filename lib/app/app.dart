import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/app_routes.dart';
import 'routes/route_pages.dart';
import 'theme/theme.dart';

class GssApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Geology Software Services',
      getPages: AppPages.routes,
      initialRoute: Routes.INITIAL,
      theme: appThemeData,
    );
  }
}
