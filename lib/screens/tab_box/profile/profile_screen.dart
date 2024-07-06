import 'package:flutter/material.dart';
import 'package:food_app/utils/app_text_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile Pge",
          style: AppTextStyle.seoulNamsanMedium,
        ),
      ),
    );
  }
}
