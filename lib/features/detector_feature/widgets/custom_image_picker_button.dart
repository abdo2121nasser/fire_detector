

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/colors/colors.dart';
import '../../../core/utils/values/app_size.dart';
import '../../../core/utils/values/font_size.dart';

class CustomImagePickerButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const CustomImagePickerButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: kGreyColor), // Border color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(k12R), // Rounded edges
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: kBlackColor), // Icon
          SizedBox(width: k10H),
          Text(
            label,
            style: TextStyle(
              color: Colors.black,
              fontSize: k16Sp,
              fontWeight: FontWeight.w500, // Medium weight
            ),
          ),
        ],
      ),
    );
  }
}
