import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/app_text_style.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Categories",
          style: AppTextStyle.seoulNamsanSemiBold.copyWith(
            fontSize: 34.sp,
            color: AppColors.c2D0C57,
          ),
        ),
      ),
    );
  }
}
