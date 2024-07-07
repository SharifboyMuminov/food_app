import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/app_size.dart';
import 'package:food_app/utils/app_text_style.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: AppColors.cardLinearGradient,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: SvgPicture.asset(
              "assets/icons/card_back.svg",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 28.we,
              bottom: 31.he,
              top: 35.he,
              right: 12.we,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: SvgPicture.asset(
                    "assets/icons/master_card_logo.svg",
                    fit: BoxFit.cover,
                    width: 64.we,
                    height: 40.we,
                  ),
                ),
                25.getH(),
                Text(
                  "4747  4747  4747  4747",
                  style: AppTextStyle.seoulNamsanMedium.copyWith(
                    fontSize: 26.sp,
                    color: AppColors.white,
                    shadows: [
                      BoxShadow(
                        color: AppColors.c4D05A9.withOpacity(0.3),
                        blurRadius: 3,
                        spreadRadius: 0,
                        offset: const Offset(0, 0.7),
                      ),
                    ],
                  ),
                ),
                25.getH(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "alexandra Smith".toUpperCase(),
                      style: AppTextStyle.seoulNamsanMedium.copyWith(
                        fontSize: 20.sp,
                        color: AppColors.white,
                        shadows: [
                          BoxShadow(
                            color: AppColors.c4D05A9.withOpacity(0.3),
                            blurRadius: 3,
                            spreadRadius: 0,
                            offset: const Offset(0, 0.7),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "07/21",
                      style: AppTextStyle.seoulNamsanMedium.copyWith(
                        fontSize: 20.sp,
                        color: AppColors.white,
                        shadows: [
                          BoxShadow(
                            color: AppColors.c4D05A9.withOpacity(0.3),
                            blurRadius: 3,
                            spreadRadius: 0,
                            offset: const Offset(0, 0.7),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
