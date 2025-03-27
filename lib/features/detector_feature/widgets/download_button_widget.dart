import 'package:flutter/material.dart';

import '../../../core/utils/colors/colors.dart';
import '../../../core/utils/component/general_button_widget.dart';
import '../../../core/utils/values/app_size.dart';

class DownloadButtonWidget extends StatelessWidget {
  const DownloadButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GeneralButtonWidget(
        label: "Download",
        function: (){},
        textColor: kTextColor,
        backgroundColor: kSecondaryColor,
        borderRadius: k14R);
  }
}
