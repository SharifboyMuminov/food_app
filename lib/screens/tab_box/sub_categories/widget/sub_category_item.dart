import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/data/models/sub_category/sub_category_model.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/app_size.dart';
import 'package:food_app/utils/app_text_style.dart';

class SubCategoryItem extends StatelessWidget {
  const SubCategoryItem({
    super.key,
    required this.subCategoryModel,
    required this.onTab,
    required this.onTabFavorite,
    required this.onTabAddToBasket,
  });

  final SubCategoryModel subCategoryModel;
  final VoidCallback onTab;
  final VoidCallback onTabAddToBasket;
  final VoidCallback onTabFavorite;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 20.he, vertical: 16.he),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
      ),
      onPressed: onTab,
      child: SizedBox(
        height: 128.he,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              subCategoryModel.imagePath,
              width: 177.we,
              height: 128.he,
            ),
            20.getW(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subCategoryModel.title,
                  style: AppTextStyle.seoulNamsanSemiBold.copyWith(
                    fontSize: 18.sp,
                    color: AppColors.c2D0C57,
                  ),
                ),
                8.getH(),
                RichText(
                  text: TextSpan(
                    text: subCategoryModel.productCount.toString(),
                    style: AppTextStyle.seoulNamsanBold.copyWith(
                      fontSize: 22.sp,
                      color: AppColors.c2D0C57,
                    ),
                    children: [
                      TextSpan(
                        text: " € / piece",
                        style: AppTextStyle.seoulNamsanRegular.copyWith(
                          fontSize: 16.sp,
                          color: AppColors.c9586A8,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.he, horizontal: 29.we),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          side: BorderSide(
                            color: AppColors.cD9D0E3F,
                            width: 1.we,
                          ),
                        ),
                        backgroundColor: AppColors.white,
                      ),
                      onPressed: onTabFavorite,
                      child: SvgPicture.asset(
                        "assets/icons/favorite.svg",
                        width: 20.we,
                        height: 20.we,
                      ),
                    ),
                    20.getW(),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.he, horizontal: 29.we),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        backgroundColor: AppColors.c0BCE83,
                      ),
                      onPressed: onTabAddToBasket,
                      child: SvgPicture.asset(
                        "assets/icons/basket.svg",
                        width: 20.we,
                        height: 20.we,
                        colorFilter: const ColorFilter.mode(
                          AppColors.white,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
