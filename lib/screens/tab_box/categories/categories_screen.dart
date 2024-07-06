import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/data/local/local_varibals.dart';
import 'package:food_app/screens/tab_box/categories/widget/category_item.dart';
import 'package:food_app/screens/tab_box/sub_categories/sab_categories_screen.dart';
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
              itemCount: categories.length,
              padding: EdgeInsets.symmetric(horizontal: 20.we, vertical: 42.he),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20.he,
                crossAxisSpacing: 20.we,
                childAspectRatio: 0.9,
              ),
              itemBuilder: (BuildContext context, int index) {
                return CategoryItem(
                  onTab: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const SabCategoriesScreen();
                        },
                      ),
                    );
                  },
                  categoryModel: categories[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
