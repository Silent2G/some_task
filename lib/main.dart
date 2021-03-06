import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ss_task/locator.dart';
import 'package:ss_task/ui/router.dart';
import 'package:ss_task/ui/shared/app_colors.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(768, 1336),
      allowFontScaling: false,
      builder: () => MaterialApp(
        title: 'company_task',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: AppColors.BLUE,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        routes: AppRouter.routes,
      ),
    );
  }
}