// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../GlobalColors/colors.dart';

class LabotryProfileWidgetFeatures extends StatelessWidget {
  const LabotryProfileWidgetFeatures({
    super.key,
    required this.icon,
    required this.title,
    required this.ontap,
    required this.iconColor,
  });
  final IconData icon;
  final String title;
  final Function ontap;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.alergyBtColor,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ListTile(
        onTap: () {
          ontap();
        },
        leading: Icon(
          icon,
          color: iconColor,
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: AppColor.textColor,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_rounded,
          color: AppColor.textColor,
        ),
      ),
    );
  }
}
