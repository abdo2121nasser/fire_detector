import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/values/app_size.dart';
import 'detect_fire_body_widget.dart';

class DetectorImageContainerWidget extends StatelessWidget {
  const DetectorImageContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ImagePickerBottomSheet.show(context, (source) {
          // Handle the selected source
          print("Selected source: $source");
        });

      },
      child: Container(
        height: MediaQuery.maybeOf(context)!.size.height * 0.35,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: Image.asset(
                "assets/select_image.jpg",
                fit: BoxFit.cover,
              ).image,
            ),
            borderRadius: BorderRadius.circular(k20R),
            border: Border.all(width: k3H)
        ),
      ),
    );
  }
}
