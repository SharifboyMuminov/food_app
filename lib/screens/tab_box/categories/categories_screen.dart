import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/screens/tab_box/widget/search_input.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/app_size.dart';
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
        title: Padding(
          padding: EdgeInsets.only(left: 6.we),
          child: Text(
            "Categories",
            style: AppTextStyle.seoulNamsanSemiBold.copyWith(
              fontSize: 34.sp,
              color: AppColors.c2D0C57,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          27.getH(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.we),
            child: SearchInput(onChanged: (String value) {}),
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 20.we, vertical: 42.he),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20.he,
                crossAxisSpacing: 20.we,
                childAspectRatio: 0.9,
              ),
              itemBuilder: (BuildContext context, int index) {
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
                  onPressed: () {},
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
                            "assets/images/vegetables.png",
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
                              "Vegetables",
                              style: AppTextStyle.seoulNamsanSemiBold.copyWith(
                                fontSize: 18.sp,
                                color: AppColors.c2D0C57,
                              ),
                            ),
                            8.getH(),
                            Text(
                              "(43)",
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
              },
            ),
          ),
        ],
      ),
    );
  }
}
