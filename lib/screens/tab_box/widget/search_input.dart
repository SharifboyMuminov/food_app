import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/app_size.dart';
import 'package:food_app/utils/app_text_style.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key, required this.onChanged});

  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      style: AppTextStyle.seoulNamsanMedium.copyWith(
        fontSize: 17.sp,
        color: AppColors.c2D0C57,
      ),
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(27.r),
          borderSide: BorderSide(color: AppColors.cD9D0E3F, width: 1.we),
        ),
        prefixIcon: Padding(
          padding: EdgeInsets.all(9.we),
          child: SvgPicture.asset(
            "assets/icons/search.svg",
            width: 24.we,
            height: 24.we,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(27.r),
          borderSide: BorderSide(color: AppColors.cD9D0E3F, width: 1.we),
        ),
        hintText: "Search",
        hintStyle: AppTextStyle.seoulNamsanRegular.copyWith(
          fontSize: 17.sp,
          color: AppColors.c9586A8,
        ),
      ),
    );
  }
}
