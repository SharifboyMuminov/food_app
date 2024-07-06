import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/data/local/local_varibals.dart';
import 'package:food_app/screens/tab_box/sub_categories/widget/sub_category_item.dart';
import 'package:food_app/screens/tab_box/widget/search_input.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/app_size.dart';
import 'package:food_app/utils/app_text_style.dart';

class SabCategoriesScreen extends StatefulWidget {
  const SabCategoriesScreen({super.key});

  @override
  State<SabCategoriesScreen> createState() => _SabCategoriesScreenState();
}

class _SabCategoriesScreenState extends State<SabCategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: width,
        height: height,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                "assets/icons/sub_category_top_item.svg",
                width: 234.we,
                height: 234.we,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                54.getH(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.we),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      size: 22.sp,
                    ),
                  ),
                ),
                10.getH(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.we),
                  child: Text(
                    "Vegetables",
                    style: AppTextStyle.seoulNamsanSemiBold.copyWith(
                      fontSize: 30.sp,
                      color: AppColors.c2D0C57,
                    ),
                  ),
                ),
                27.getH(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.we),
                  child: SearchInput(onChanged: (String value) {}),
                ),
                40.getH(),
                Expanded(
                  child: ListView.builder(
                    itemCount: subCategories.length,
                    itemBuilder: (BuildContext context, int index) {
                      return SubCategoryItem(
                        subCategoryModel: subCategories[index],
                        onTab: () {},
                        onTabFavorite: () {},
                        onTabAddToBasket: () {},
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
