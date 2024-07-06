import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/data/local/local_varibals.dart';
import 'package:food_app/screens/tab_box/sub_categories/widget/filter_item.dart';
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
  final List<String> filterOne = [
    "Сabbage and lettuce (14)",
    "Сucumbers and tomatoes (10)",
  ];
  final List<String> filterTwo = [
    "Oinons and garlic (8)",
    "Peppers (7)",
    "Potatoes and carrots (4)",
  ];

  int activeFilterOne = -1;
  int activeFilterTwo = -1;

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
                    onPressed: () => Navigator.pop(context),
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
                SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 16.we),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      filterOne.length,
                      (index) {
                        return FilterItem(
                          onTab: () {
                            setState(() => activeFilterOne = index);
                          },
                          title: filterOne[index],
                          isActive: activeFilterOne == index,
                        );
                      },
                    ),
                  ),
                ),
                20.getH(),
                SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 16.we),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      filterTwo.length,
                      (index) {
                        return FilterItem(
                          onTab: () {
                            setState(() => activeFilterTwo = index);
                          },
                          title: filterTwo[index],
                          isActive: activeFilterTwo == index,
                        );
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.symmetric(vertical: 32.he),
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
