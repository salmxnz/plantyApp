import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:planty_app/scan_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CameraScreen extends GetView<ScanController> {
  const CameraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<ScanController>(builder: (controller) {
      if (!controller.isInitialized) {
        return Container();
      }
      return CameraPreview(controller.cameraController);
    });
  }
}
