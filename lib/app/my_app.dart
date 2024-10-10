import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ma3ak_app/routing/routes_name.dart';
import 'package:ma3ak_app/routing/routs.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ma3ak',
        theme: ThemeData(
          fontFamily: 'Comic Sans Ms',
        ),
        onGenerateRoute: RouteGenerator.getRoute,
        initialRoute: RoutesName.splashRoute,
      ),
    );
  }
}
