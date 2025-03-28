import 'package:flutter/cupertino.dart';

import '../../../core/utils/colors/colors.dart';
import '../../../core/utils/values/font_size.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Fire Detection",
          style: TextStyle(
              fontSize: k30Sp, fontWeight: FontWeight.bold, color: kBlackColor),
        ),
        Text(
          "Capture or upload an image to analyze for potential\nwildfires",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: k14Sp,
            color: kGreyColor,
          ),
        ),
      ],
    );
  }
}
