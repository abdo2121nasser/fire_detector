import 'package:fire_detector/core/utils/component/general_button_widget.dart';
import 'package:flutter/material.dart';

import 'package:fire_detector/core/utils/colors/colors.dart';
import 'package:fire_detector/core/utils/values/app_size.dart';
import 'package:fire_detector/core/utils/values/font_size.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import 'detect_button_widget.dart';
import 'detector_image_container_widget.dart';
import 'download_button_widget.dart';

class DetectFireBodyWidget extends StatelessWidget {
  const DetectFireBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        DetectorImageContainerWidget(),
        DetectButtonWidget(),


        // DownloadButtonWidget()
      ],
    );
  }
}





class ImagePickerBottomSheet {
  static void show(BuildContext context, Function(ImageSource) onImageSelected) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildOption(
                icon: Icons.camera_alt,
                label: "Camera",
                color: Colors.blue,
                onTap: () {
                  Navigator.pop(context);
                  onImageSelected(ImageSource.camera);
                },
              ),
              _buildOption(
                icon: Icons.photo_library,
                label: "Gallery",
                color: Colors.green,
                onTap: () {
                  Navigator.pop(context);
                  onImageSelected(ImageSource.gallery);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  static Widget _buildOption({
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            backgroundColor: color.withOpacity(0.2),
            radius: 30,
            child: Icon(icon, color: color, size: 30),
          ),
          const SizedBox(height: 8),
          Text(label, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
