import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:get/get.dart';
import 'package:planty_app/scan_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CameraViewer extends StatelessWidget {
  const CameraViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<ScanController>(builder: (controller) {
      if (!controller.isInitialized) {
        return Container();
      }
      return SizedBox(
          height: Get.height,
          width: Get.width,
          child: CameraPreview(controller.cameraController));
    });
  }
}
