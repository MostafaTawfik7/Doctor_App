import 'package:doctor_app/core/routing/app_router.dart';
import 'package:doctor_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorApp extends StatelessWidget {
  const DoctorApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = appRouter();
    return ScreenUtilInit(
      designSize: const Size(360, 812),
      minTextAdapt: true,
      child: MaterialApp.router(
        title: 'Doctor App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: ColorsManager.mainBlue),
          useMaterial3: true,
        ),
        routerConfig: router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
