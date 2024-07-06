import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/data/models/sub_category/sub_category_model.dart';
import 'package:food_app/screens/widget/global_button.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/app_size.dart';
import 'package:food_app/utils/app_text_style.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key, required this.subCategoryModel});

  final SubCategoryModel subCategoryModel;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int activeImage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 358.he,
            child: PageView(
              onPageChanged: (v) {
                setState(() => activeImage = v);
              },
              children: List.generate(
                3,
                (index) {
                  return Image.asset(
                    widget.subCategoryModel.imagePath,
                    fit: BoxFit.cover,
                    width: width,
                  );
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(
                    3,
                    (index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.we),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: AppColors.white
                                .withOpacity(activeImage == index ? 1 : 0.5),
                            shape: BoxShape.circle,
                          ),
                          child: SizedBox(
                            width: 8.we,
                            height: 8.we,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                15.getH(),
                SizedBox(
                  width: width,
                  height: height * 0.65,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: AppColors.cF6F5F5,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.r),
                        topLeft: Radius.circular(30.r),
                      ),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            padding: EdgeInsets.only(
                              top: 37.he,
                              right: 20.we,
                              left: 20.we,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Boston Lettuce",
                                  style:
                                      AppTextStyle.seoulNamsanSemiBold.copyWith(
                                    fontSize: 30.sp,
                                    color: AppColors.c2D0C57,
                                  ),
                                ),
                                15.getH(),
                                RichText(
                                  text: TextSpan(
                                    text: "1.10",
                                    style: AppTextStyle.seoulNamsanSemiBold
                                        .copyWith(
                                      fontSize: 32.sp,
                                      color: AppColors.c2D0C57,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: " € / piece",
                                        style: AppTextStyle.seoulNamsanRegular
                                            .copyWith(
                                          fontSize: 24.sp,
                                          color: AppColors.c9586A8,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                8.getH(),
                                Text(
                                  "~ 150 gr / piece",
                                  style:
                                      AppTextStyle.seoulNamsanMedium.copyWith(
                                    fontSize: 17.sp,
                                    color: AppColors.c06BE77,
                                  ),
                                ),
                                30.getH(),
                                Text(
                                  "Spain",
                                  style:
                                      AppTextStyle.seoulNamsanSemiBold.copyWith(
                                    fontSize: 22.sp,
                                    color: AppColors.c2D0C57,
                                  ),
                                ),
                                15.getH(),
                                Text(
                                  "Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled.",
                                  style:
                                      AppTextStyle.seoulNamsanRegular.copyWith(
                                    fontSize: 17.sp,
                                    color: AppColors.c9586A8,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.we),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 18.he),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.r),
                                      side: BorderSide(
                                        color: AppColors.cD9D0E3F,
                                        width: 1.we,
                                      ),
                                    ),
                                    backgroundColor: AppColors.white,
                                  ),
                                  onPressed: () {},
                                  child: SvgPicture.asset(
                                    "assets/icons/favorite.svg",
                                    width: 20.we,
                                    height: 20.we,
                                  ),
                                ),
                              ),
                              20.getW(),
                              Expanded(
                                flex: 3,
                                child: GlobalMyButton(
                                  onTab: () {},
                                  title: "add to cart".toUpperCase(),
                                  iconPath: "assets/icons/basket.svg",
                                ),
                              ),
                            ],
                          ),
                        ),
                        23.getH(),
                      ],
                    ),
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
