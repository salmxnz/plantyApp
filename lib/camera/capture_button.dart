import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:planty_app/scan_controller.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

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

// class CaptureButton extends GetView<ScanController> {

// }

// class CaptureButton extends GetView<ScanController> {
//   const CaptureButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//       bottom: 30,
//       child: FloatingActionButton(
//         onPressed: () async {
//           try {
//             // Ensure that the camera is initialized.
//             await _initializeControllerFuture;

//             // Attempt to take a picture and then get the location
//             // where the image file is saved.
//             final image = await controller.takePicture();
//           } catch (e) {
//             // If an error occurs, log the error to the console.
//             print(e);
//           }
//         },
//         child: const Icon(Icons.camera_alt),
//       ),
//     );
//   }
// }
