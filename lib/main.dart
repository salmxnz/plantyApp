import 'package:flutter/material.dart';
import 'package:planty_app/camera/camera_screen.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:planty_app/global_bindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: CameraScreen(),
      title: "Camera App",
      initialBinding: GlobalBindings(),
    );
  }
}
