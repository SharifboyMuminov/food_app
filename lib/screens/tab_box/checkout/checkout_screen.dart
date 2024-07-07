import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/screens/tab_box/checkout/widget/change.dart';
import 'package:food_app/screens/tab_box/checkout/widget/check_box.dart';
import 'package:food_app/screens/tab_box/checkout/widget/main_button.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/app_size.dart';
import 'package:food_app/utils/app_text_style.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int activeDeliveryOptionsIndex = 0;

  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.cF6F5F5,
        centerTitle: true,
        title: Text(
          "Checkout",
          style: AppTextStyle.seoulNamsanSemiBold.copyWith(
            fontSize: 17.sp,
            color: AppColors.c2D0C57,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            width: width,
            height: 1,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.white,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.black.withOpacity(0.1),
                    blurRadius: 18,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(vertical: 24.he),
              child: Column(
                children: [
                  ChangeView(onTabChange: () {}, title: 'Payment method'),
                  16.getH(),
                  MyMainButton(
                    onTab: () {},
                    title: "**** **** **** 4747",
                    iconPath: "assets/icons/card.svg",
                  ),
                  32.getH(),
                  ChangeView(onTabChange: () {}, title: "Delivery address"),
                  16.getH(),
                  MyMainButton(
                    onTab: () {},
                    title:
                        "Alexandra Smith Cesu 31 k-2 5.st, SIA Chili Riga LV–1012 Latvia",
                    iconPath: "assets/icons/home.svg",
                  ),
                  32.getH(),
                  ChangeView(onTabChange: () {}, title: "Delivery options"),
                  12.getH(),
                  MyMainButton(
                    isActive: activeDeliveryOptionsIndex == 0,
                    onTab: () {
                      setState(() {
                        activeDeliveryOptionsIndex = 0;
                      });
                    },
                    title: 'I’ll pick it up myself',
                    iconPath: 'assets/icons/person.svg',
                  ),
                  MyMainButton(
                    isActive: activeDeliveryOptionsIndex == 1,
                    onTab: () {
                      setState(() {
                        activeDeliveryOptionsIndex = 1;
                      });
                    },
                    title: 'By courier',
                    iconPath: 'assets/icons/bicycle.svg',
                  ),
                  MyMainButton(
                    isActive: activeDeliveryOptionsIndex == 2,
                    onTab: () {
                      setState(() {
                        activeDeliveryOptionsIndex = 2;
                      });
                    },
                    title: 'By Drone',
                    iconPath: 'assets/icons/drone.svg',
                  ),
                  40.getH(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.we),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Non-contact-delivery",
                          style: AppTextStyle.seoulNamsanBold.copyWith(
                            fontSize: 22.sp,
                            color: AppColors.c2D0C57,
                          ),
                        ),
                        MyCheckBox(
                          isSwitched: isSwitched,
                          onTab: () {
                            setState(() {
                              isSwitched = !isSwitched;
                            });
                          },

                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
