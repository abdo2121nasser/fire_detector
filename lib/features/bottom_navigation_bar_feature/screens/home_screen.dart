import 'package:fire_detector/core/utils/colors/colors.dart';
import 'package:fire_detector/features/detector_feature/screens/fire_detector_screen.dart';
import 'package:fire_detector/features/detector_feature/widgets/custom_app_bar_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: const CustomAppBarWidget(),
        body: FireDetectorScreen(),
        bottomNavigationBar: DecoratedBox(
          decoration: const BoxDecoration(gradient: kPrimaryGradientColor),
          child: BottomNavigationBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              selectedItemColor: kHotFireColor,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.camera_alt_outlined), label: "Detect"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.history), label: "History"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: "Profile"),
              ]),
        ));
  }
}
