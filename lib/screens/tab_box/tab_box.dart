import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/screens/tab_box/categories/categories_screen.dart';
import 'package:food_app/screens/tab_box/checkout/checkout_screen.dart';
import 'package:food_app/screens/tab_box/profile/profile_screen.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/app_size.dart';

class TabBox extends StatefulWidget {
  const TabBox({super.key});

  @override
  State<TabBox> createState() => _TabBoxState();
}

class _TabBoxState extends State<TabBox> {
  final List<Widget> _screens = const [
    CategoriesScreen(),
    CheckoutScreen(),
    ProfileScreen(),
  ];

  int _activePage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _activePage,
        children: _screens,
      ),
      bottomNavigationBar: DecoratedBox(
        decoration: BoxDecoration(
          color: CupertinoColors.tertiarySystemFill,
          border: Border(
            top: BorderSide(
              color: AppColors.cD9D0E3F,
              width: 1.we,
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12.he),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                padding: EdgeInsets.all(20.we),
                onPressed: () {
                  setState(() {
                    _activePage = 0;
                  });
                },
                icon: SvgPicture.asset(
                  "assets/icons/category.svg",
                  width: 24.we,
                  height: 24.we,
                  colorFilter: ColorFilter.mode(
                    _activePage == 0 ? AppColors.c7203FF : AppColors.c9586A8,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              IconButton(
                padding: EdgeInsets.all(20.we),
                onPressed: () {
                  setState(() {
                    _activePage = 1;
                  });
                },
                icon: SvgPicture.asset(
                  "assets/icons/basket.svg",
                  width: 24.we,
                  height: 24.we,
                  colorFilter: ColorFilter.mode(
                    _activePage == 1 ? AppColors.c7203FF : AppColors.c9586A8,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              IconButton(
                padding: EdgeInsets.all(20.we),
                onPressed: () {
                  setState(() {
                    _activePage = 2;
                  });
                },
                icon: SvgPicture.asset(
                  "assets/icons/profile.svg",
                  width: 24.we,
                  height: 24.we,
                  colorFilter: ColorFilter.mode(
                    _activePage == 2 ? AppColors.c7203FF : AppColors.c9586A8,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
