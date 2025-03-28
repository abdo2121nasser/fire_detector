import 'package:fire_detector/core/utils/colors/colors.dart';
import 'package:fire_detector/core/utils/values/app_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/detect_button_widget.dart';
import '../widgets/full_detecting_image_container_widget.dart';
import '../widgets/title_widget.dart';

class FireDetectorScreen extends StatelessWidget {
  const FireDetectorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
          gradient: kPrimaryGradientColor),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: k20H),
        child:  Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
             TitleWidget(),
            FullDetectingImageContainerWidget(),
            DetectButtonWidget()
          ],
        ),
      ),
    );
  }
}

