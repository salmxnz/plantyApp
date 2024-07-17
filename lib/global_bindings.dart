import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:planty_app/scan_controller.dart';

class GlobalBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<ScanController>(() => ScanController());
  }
}
