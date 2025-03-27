import 'package:flutter/material.dart';

import '../../../core/utils/colors/colors.dart';
import '../../../core/utils/values/font_size.dart';

class CustomAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBarWidget({super.key});



  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(onPressed: () {}, icon: const Icon(Icons.history)),
      backgroundColor: AppColor.secondaryColor,
      title: Text(
        "Detect Fire",
        style: TextStyle(
            color: AppColor.textColor,
            fontWeight: FontWeight.bold,
            fontSize: AppFontSize.s20),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
