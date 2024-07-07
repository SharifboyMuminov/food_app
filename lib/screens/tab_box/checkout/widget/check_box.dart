import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/app_size.dart';
import 'package:food_app/utils/app_text_style.dart';

class MyCheckBox extends StatelessWidget {
  const MyCheckBox({super.key, required this.onTab, required this.isSwitched});

  final VoidCallback onTab;
  final bool isSwitched;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        width: 74.we,
        height: 35.he,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: isSwitched
              ? Colors.purple.withOpacity(0.2)
              : Colors.grey.withOpacity(0.2),
        ),
        child: Stack(
          children: [
            AnimatedAlign(
              alignment:
                  isSwitched ? Alignment.centerRight : Alignment.centerLeft,
              duration: const Duration(milliseconds: 300),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.we),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: 26.we,
                  height: 26.we,
                  decoration: const BoxDecoration(
                    color: AppColors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment:
                  isSwitched ? Alignment.centerLeft : Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  isSwitched ? 'Yes' : 'No',
                  style: AppTextStyle.seoulNamsanMedium.copyWith(
                    fontSize: 14.sp,
                    color: AppColors.c6C0EE4,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
