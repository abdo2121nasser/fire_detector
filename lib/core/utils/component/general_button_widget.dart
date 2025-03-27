import 'package:fire_detector/core/utils/values/font_size.dart';
import 'package:flutter/material.dart';

class GeneralButtonWidget extends StatelessWidget {
  final String label;
  final VoidCallback function;
  final double? width, height;
  final double borderRadius;
  final Color textColor, backgroundColor;

  const GeneralButtonWidget(
      {super.key,
      required this.label,
      required this.function,
      this.width,
      this.height,
      required this.textColor,
      required this.backgroundColor,
      required this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: function,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius)),
          backgroundColor: backgroundColor,
          fixedSize:
              width == null || height == null ? null : Size(width!, height!),
        ),
        child: Text(
          label,
          style: TextStyle(fontSize: 20, color: textColor),
        ));
  }
}
