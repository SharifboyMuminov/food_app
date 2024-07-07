import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/utils/app_size.dart';

class OpenCameraButton extends StatelessWidget {
  const OpenCameraButton({super.key, required this.onTab});

  final VoidCallback onTab;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 11.he),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.r),
          ),
        ),
        onPressed: onTab,
        child: SvgPicture.asset(
          "assets/icons/camera.svg",
          width: 34.we,
          height: 29.he,
        ),
      ),
    );
  }
}
