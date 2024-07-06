import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/data/models/category/category_model.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/app_size.dart';
import 'package:food_app/utils/app_text_style.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.onTab,
    required this.categoryModel,
  });

  final VoidCallback onTab;
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.only(
          bottom: 14.he,
        ),
        backgroundColor: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
          side: BorderSide(
            width: 1.we,
            color: AppColors.cD9D0E3F,
          ),
        ),
      ),
      onPressed: onTab,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8.r),
                topLeft: Radius.circular(8.r),
              ),
              child: Image.asset(
                categoryModel.imagePath,
                fit: BoxFit.fill,
                width: double.infinity,
              ),
            ),
          ),
          10.getH(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.we),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  categoryModel.title,
                  style: AppTextStyle.seoulNamsanSemiBold.copyWith(
                    fontSize: 18.sp,
                    color: AppColors.c2D0C57,
                  ),
                ),
                8.getH(),
                Text(
                  "(${categoryModel.productCount})",
                  style: AppTextStyle.seoulNamsanRegular.copyWith(
                    fontSize: 14.sp,
                    color: AppColors.c9586A8,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
