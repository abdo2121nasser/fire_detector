import 'package:fire_detector/features/detector_feature/widgets/select_image_choices_widget.dart';
import 'package:flutter/cupertino.dart';

import '../../../core/utils/colors/colors.dart';
import '../../../core/utils/values/app_size.dart';
import 'detected_image_container_widget.dart';

class FullDetectingImageContainerWidget extends StatelessWidget {
  const FullDetectingImageContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.38,
      padding: EdgeInsets.symmetric(vertical: k10V),
      decoration: BoxDecoration(
        color: kWhiteColor,
        gradient: kPrimaryGradientColor,
        borderRadius: BorderRadius.circular(k20R),
        boxShadow: const [
          BoxShadow(
            color: kBlackColor, // Shadow color
            blurRadius: 4, // Softness of shadow
            spreadRadius: 1, // How much shadow expands
            offset: Offset(0, 2), // Shadow position
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          DetectedImageContainerWidget(),
          SelectImageChoicesWidget(),
        ],
      ),
    );
  }
}
