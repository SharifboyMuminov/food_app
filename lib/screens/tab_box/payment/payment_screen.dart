import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/screens/tab_box/payment/widget/card_info_input.dart';
import 'package:food_app/screens/tab_box/payment/widget/card_item.dart';
import 'package:food_app/screens/tab_box/payment/widget/open_camera_button.dart';
import 'package:food_app/screens/widget/global_button.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/app_size.dart';
import 'package:food_app/utils/app_text_style.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.cF6F5F5,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 22.sp,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                left: 20.we,
                right: 20.we,
                bottom: 60.we,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  1.getH(),
                  Text(
                    "Credit / Debit card",
                    style: AppTextStyle.seoulNamsanBold.copyWith(
                      fontSize: 30.sp,
                      color: AppColors.c2D0C57,
                    ),
                  ),
                  21.getH(),
                  const CardItem(),
                  24.getH(),
                  OpenCameraButton(onTab: () {}),
                  13.getH(),
                  MyCardInfoInput(
                    onChanged: (String value) {},
                    topLabelTitle: 'Name on card',
                  ),
                  23.getH(),
                  MyCardInfoInput(
                    textInputType: TextInputType.phone,
                    onChanged: (String value) {},
                    topLabelTitle: 'Card number',
                  ),
                  23.getH(),
                  Row(
                    children: [
                      Expanded(
                        child: MyCardInfoInput(
                          textInputType: TextInputType.phone,
                          onChanged: (String value) {},
                          topLabelTitle: 'Expiry date',
                        ),
                      ),
                      22.getW(),
                      Expanded(
                        child: MyCardInfoInput(
                          textInputType: TextInputType.phone,
                          onChanged: (String value) {},
                          topLabelTitle: 'CVC',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.we,
              bottom: 20.he,
              right: 20.we,
            ),
            child: GlobalMyButton(
              onTab: () {},
              title: "use this card".toUpperCase(),
            ),
          ),
        ],
      ),
    );
  }
}
