import 'package:flutter/material.dart';

import 'package:planty_app/camera/camera_viewer.dart';
import 'package:planty_app/camera/capture_button.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: const [CameraViewer(), CaptureButton()],
    );
  }
}
