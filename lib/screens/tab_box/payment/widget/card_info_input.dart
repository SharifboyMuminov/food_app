import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/app_size.dart';
import 'package:food_app/utils/app_text_style.dart';

class MyCardInfoInput extends StatelessWidget {
  const MyCardInfoInput({
    super.key,
    required this.onChanged,
    required this.topLabelTitle,
    this.textInputType,
    this.textInputAction,
  });

  final ValueChanged<String> onChanged;
  final String topLabelTitle;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.we),
          child: Text(
            topLabelTitle,
            style: AppTextStyle.seoulNamsanRegular.copyWith(
              fontSize: 14.sp,
              color: AppColors.c9586A8,
            ),
          ),
        ),
        TextFormField(
          keyboardType: textInputType ?? TextInputType.text,
          textInputAction: textInputAction ?? TextInputAction.done,
          inputFormatters: textInputType == TextInputType.phone
              ? [
                  FilteringTextInputFormatter.digitsOnly,
                ]
              : null,
          onChanged: onChanged,
          style: AppTextStyle.seoulNamsanRegular.copyWith(
            fontSize: 17.sp,
            color: AppColors.c2D0C57,
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.white,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(
                color: AppColors.cD9D0E3F,
                width: 1.we,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(
                color: AppColors.cD9D0E3F,
                width: 1.we,
              ),
            ),
            hintText: "Enter ${topLabelTitle.toLowerCase()}...",
            hintStyle: AppTextStyle.seoulNamsanRegular.copyWith(
              fontSize: 14.sp,
              color: AppColors.c9586A8,
            ),
          ),
        ),
      ],
    );
  }
}
