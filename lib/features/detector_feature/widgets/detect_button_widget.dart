import 'package:flutter/material.dart';

import '../../../core/utils/colors/colors.dart';
import '../../../core/utils/component/general_button_widget.dart';
import '../../../core/utils/values/app_size.dart';

class DetectButtonWidget extends StatelessWidget {
  const DetectButtonWidget({super.key});



  @override
  Widget build(BuildContext context) {
    return GeneralButtonWidget(
        label: "Detect Wild Fire",
        function: (){},
        textColor: kBlackColor,
        backgroundColor: kLightFireColor,
        borderRadius: k14R);
  }
}
