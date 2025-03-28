import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_image_picker_button.dart';

class SelectImageChoicesWidget extends StatelessWidget {
  const SelectImageChoicesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomImagePickerButton(
            icon: CupertinoIcons.camera, label: 'camera', onPressed: () {}),
        CustomImagePickerButton(
            icon: Icons.image_outlined, label: 'Gallery', onPressed: () {}),
      ],
    );
  }
}
