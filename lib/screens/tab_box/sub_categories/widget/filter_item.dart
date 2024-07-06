import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/app_size.dart';
import 'package:food_app/utils/app_text_style.dart';

class FilterItem extends StatelessWidget {
  const FilterItem({
    super.key,
    required this.onTab,
    required this.title,
    required this.isActive,
  });

  final VoidCallback onTab;
  final String title;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 4.we),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 15.we,vertical: 5.he),
          backgroundColor: isActive ? AppColors.cE2CBFF : AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17.r),
          ),
        ),
        onPressed: onTab,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if(isActive)
            SvgPicture.asset(
              "assets/icons/check.svg",
              width: 24.we,
              height: 24.we,
            ),
            Text(
              title,
              style: AppTextStyle.seoulNamsanRegular.copyWith(
                fontSize: 14.sp,
                color: isActive ? AppColors.c6C0EE4 : AppColors.c9586A8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
