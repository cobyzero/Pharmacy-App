import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharmacy_app/core/router/router.dart';
import 'package:sizer/sizer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          defaultTransition: Transition.cupertino,
          title: 'Material App',
          initialRoute: "/splash",
          getPages: getRouter,
        );
      },
    );
  }
}
