import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gamai/src/common/styles/app_colors.dart';
import 'package:neumorphic_button/neumorphic_button.dart';

class CustomNeumorphicButton extends StatelessWidget {
  const CustomNeumorphicButton({
    super.key,
    required this.child,
    required this.onPressed,
  });
  final String child;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onTap: onPressed,
      borderRadius: 8,
      bottomRightShadowBlurRadius: 1,
      bottomRightShadowSpreadRadius: 1,
      borderWidth: 5,
      backgroundColor: const Color(0xFF4F5D64),
      topLeftShadowBlurRadius: 1,
      topLeftShadowSpreadRadius: 1,
      topLeftShadowColor: const Color(0xFF6F7678),
      bottomRightShadowColor: const Color(0xFF222628),
      height: 40.h,
      width: 160.w,
      padding: const EdgeInsets.all(16),
      bottomRightOffset: const Offset(2, 2),
      topLeftOffset: const Offset(-1, -1),
      child: Text(
        child,
        style: TextStyle(
          color: AppColors.white,
          fontSize: 20.sp,
        ),
      ),
    );
  }
}
