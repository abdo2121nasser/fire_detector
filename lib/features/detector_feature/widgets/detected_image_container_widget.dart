import 'package:fire_detector/core/utils/colors/colors.dart';
import 'package:fire_detector/core/utils/images.dart';
import 'package:fire_detector/core/utils/values/font_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/values/app_size.dart';

class DetectedImageContainerWidget extends StatelessWidget {
  const DetectedImageContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.maybeOf(context)!.size.width * 0.65,
      height: MediaQuery.maybeOf(context)!.size.height * 0.25,
      margin: EdgeInsets.symmetric(vertical: k5V),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: kPrimaryGradientColor,
        borderRadius: BorderRadius.circular(k20R),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.image_not_supported_outlined,
            color: kGreyColor,
            size: MediaQuery.maybeOf(context)!.size.width * 0.4,
          ),
        ],
      ),
    );
  }
}
