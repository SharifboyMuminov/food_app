import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/app_size.dart';
import 'package:food_app/utils/app_text_style.dart';

class ChangeView extends StatelessWidget {
  const ChangeView({super.key, required this.onTabChange, required this.title});

  final VoidCallback onTabChange;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.we, right: 12.we),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTextStyle.seoulNamsanBold.copyWith(
              fontSize: 22.sp,
              color: AppColors.c2D0C57,
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
            onPressed: onTabChange,
            child: Text(
              "CHANGE",
              style: AppTextStyle.seoulNamsanSemiBold.copyWith(
                fontSize: 15.sp,
                color: AppColors.c7203FF,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
