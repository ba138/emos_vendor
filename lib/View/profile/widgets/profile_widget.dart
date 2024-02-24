import 'package:flutter/material.dart';

import '../../../GlobalColors/colors.dart';


class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });
  final IconData icon;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Icon(icon, color: AppColor.bgFillColor),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: AppColor.textColor2,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: AppColor.textColor,
        ),
      ),
    );
  }
}