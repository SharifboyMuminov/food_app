import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/app_size.dart';
import 'package:food_app/utils/app_text_style.dart';

class GlobalMyButton extends StatelessWidget {
  const GlobalMyButton({
    super.key,
    required this.onTab,
    required this.title,
    this.iconPath = "",
    this.padding,
  });

  final VoidCallback onTab;
  final String title;
  final String iconPath;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        padding: padding ?? EdgeInsets.symmetric(vertical: 16.he),
        backgroundColor: AppColors.c0BCE83,
      ),
      onPressed: onTab,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (iconPath.isNotEmpty)
            SvgPicture.asset(
              iconPath,
              width: 20.we,
              height: 20.we,
            ),
          if (iconPath.isNotEmpty) 16.getW(),
          Text(
            title,
            style: AppTextStyle.seoulNamsanSemiBold.copyWith(
              fontSize: 15.sp,
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
