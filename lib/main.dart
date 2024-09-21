import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rastourant_app1/Config/Routes/app_routes.dart';
import 'package:rastourant_app1/Config/Routes/routes_name.dart';
import 'package:rastourant_app1/Config/Themes/app_themes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const ChopWell(),
      ),
    );

class ChopWell extends StatelessWidget {
  const ChopWell({super.key});

  @override
  Widget build(BuildContext context) {
   return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      
      builder: (context, child) {
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Chopwell',
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.light,
      initialRoute: RoutesName.splash,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      onUnknownRoute: AppRoutes.onUnknownRoute,
         
        );
      },
         
      
     
    );
  }
}
