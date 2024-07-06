import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/utils/app_size.dart';

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
          ],
        ),
      ),
    );
  }
}
