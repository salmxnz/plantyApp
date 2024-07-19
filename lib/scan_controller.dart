import 'dart:typed_data';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:image/image.dart' as img;

class ScanController extends GetxController {
  final RxBool _isInitialized = RxBool(false);
  late CameraController _cameraController;
  late List<CameraDescription> _cameras;
  late CameraImage _cameraImage;

  bool get isInitialized => _isInitialized.value;
  CameraController get cameraController => _cameraController;

  Future<void> _initCamera() async {
    _cameras = await availableCameras();
    _cameraController =
        CameraController(_cameras[0], ResolutionPreset.max);
    _cameraController.initialize().then((_) {
      _isInitialized.value = true;
      _cameraController
          .startImageStream((image) => _cameraImage = image);
      // print(DateTime.now().microsecondsSinceEpoch)
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            // Handle access errors here.
            break;
          default:
            // Handle other errors here.
            break;
        }
      }
    });
  }

  @override
  void onInit() {
    _initCamera();
    super.onInit();
  }

  void capture() {
    img.Image image = img.Image.fromBytes(
        width: _cameraImage.width,
        height: _cameraImage.height,
        bytes: _cameraImage.planes[0].bytes.buffer);

    Uint8List jpeg = Uint8List.fromList(img.encodeJpg(image));
    print(jpeg.length);
    print("Image Captured!");
  }
}
