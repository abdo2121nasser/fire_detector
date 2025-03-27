import 'package:device_preview/device_preview.dart';
import 'package:fire_detector/configeration/routes.dart';
import 'package:fire_detector/features/detector_feature/screens/fire_detector_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FireDetectorApp extends StatelessWidget {
  const FireDetectorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => DevicePreview(
        // enabled: true,
        builder: (context) => SafeArea(
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            // builder: DevicePreview.appBuilder,
            routerConfig: AppRoute.router,
          ),
        ),
      ),
    );
  }
}
