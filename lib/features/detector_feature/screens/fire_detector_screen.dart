import 'package:fire_detector/core/utils/colors/colors.dart';
import 'package:fire_detector/core/utils/values/app_size.dart';
import 'package:fire_detector/core/utils/values/font_size.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_app_bar_widget.dart';
import '../widgets/detect_fire_body_widget.dart';

class FireDetectorScreen extends StatelessWidget {
  const FireDetectorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWidget(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: k20H),
        child: DetectFireBodyWidget(),
      ),
    );
  }
}

