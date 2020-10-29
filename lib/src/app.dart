import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gss/src/routes/app_routes.dart';

import 'routes/route_pages.dart';
import 'theme/theme.dart';

class GssApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      getPages: AppPages.routes,
      initialRoute: Routes.INITIAL,
      theme: appThemeData,
      home: Scaffold(
        appBar: AppBar(),
      ),
    );
  }
}
