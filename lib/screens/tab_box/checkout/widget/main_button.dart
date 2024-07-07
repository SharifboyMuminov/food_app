import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/app_size.dart';
import 'package:food_app/utils/app_text_style.dart';

class MyMainButton extends StatelessWidget {
  const MyMainButton({
    super.key,
    required this.onTab,
    required this.title,
    required this.iconPath,
    this.isActive = false,
  });

  final VoidCallback onTab;
  final String title;
  final String iconPath;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 16.he, horizontal: 20.we),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.r),
        ),
      ),
      onPressed: onTab,
      child: Row(
        children: [
          SvgPicture.asset(
            iconPath,
            width: 24.we,
            height: 24.we,
            colorFilter: ColorFilter.mode(
              isActive ? AppColors.c7203FF : AppColors.c2D0C57,
              BlendMode.srcIn,
            ),
          ),
          25.getW(),
          Expanded(
            child: Text(
              title,
              style: AppTextStyle.seoulNamsanRegular.copyWith(
                fontSize: 17.sp,
                color: isActive ? AppColors.c7203FF : AppColors.c9586A8,
              ),
            ),
          ),
          if (isActive)
            SvgPicture.asset(
              "assets/icons/check.svg",
              width: 24.we,
              height: 24.we,
            ),
        ],
      ),
    );
  }
}
