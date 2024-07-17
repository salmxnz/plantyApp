import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:planty_app/scan_controller.dart';

class CaptureButton extends GetView<ScanController> {
  const CaptureButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      child: GestureDetector(
        onTap: () => controller.capture(),
        child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.white60, width: 5),
            shape: BoxShape.circle,
          ),
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
            child: const Center(child: Icon(Icons.camera)),
          ),
        ),
      ),
    );
  }
}
