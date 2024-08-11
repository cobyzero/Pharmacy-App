import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharmacy_app/core/router/router.dart';
import 'package:pharmacy_app/core/theme/theme.dart';
import 'package:sizer/sizer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          defaultTransition: Transition.cupertino,
          title: 'Material App',
          theme: theme,
          initialRoute: "/splash",
          getPages: getRouter,
        );
      },
    );
  }
}
