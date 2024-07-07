import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/app_text_style.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: Text(
          "Checkout",
          style: AppTextStyle.seoulNamsanSemiBold.copyWith(
            fontSize: 17.sp,
            color: AppColors.c2D0C57,
          ),
        ),
        elevation: 0.5,
      ),
    );
  }
}
