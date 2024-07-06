import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/app_size.dart';
import 'package:food_app/utils/app_text_style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.cA259FF,
      body: SizedBox(
        width: width,
        height: height,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                "assets/images/splash_top_item.png",
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20.we, top: 63.he),
                child: SvgPicture.asset("assets/icons/logo_app.svg"),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: AppColors.cF6F5F5,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25.r),
                    topLeft: Radius.circular(25.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 64.he,
                    bottom: 54.he,
                    left: 20.we,
                    right: 20.we,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(width: double.infinity),
                      SvgPicture.asset(
                        "assets/icons/box.svg",
                        width: 104.we,
                        height: 104.we,
                      ),
                      24.getH(),
                      Text(
                        "Non-Contact Deliveries",
                        textAlign: TextAlign.center,
                        style: AppTextStyle.seoulNamsanSemiBold.copyWith(
                          fontSize: 34.sp,
                          color: AppColors.c2D0C57,
                        ),
                      ),
                      22.getH(),
                      Text(
                        "When placing an order, select the option “Contactless delivery” and the courier will leave your order at the door.",
                        textAlign: TextAlign.center,
                        style: AppTextStyle.seoulNamsanRegular.copyWith(
                          fontSize: 17.sp,
                          color: AppColors.c9586A8,
                        ),
                      ),
                      45.getH(),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: AppColors.c0BCE83,
                        ),
                        onPressed: () {},
                        child: Text(
                          "order now".toUpperCase(),
                          style: AppTextStyle.seoulNamsanSemiBold.copyWith(
                            fontSize: 15.sp,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
