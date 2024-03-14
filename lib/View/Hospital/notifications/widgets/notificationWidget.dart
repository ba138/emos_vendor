// ignore_for_file: file_names

import 'package:emos_vendor/components/VerticalSpacing/vertical_spacing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../GlobalColors/colors.dart';

class NotificationsWidget extends StatelessWidget {
  const NotificationsWidget({
    super.key,
    required this.onpress,
  });
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpeacing(20),
        InkWell(
          onTap: onpress,
          child: ListTile(
            leading: const Icon(
              Icons.notifications,
              size: 30,
              color: AppColor.bgFillColor,
            ),
            title: Text.rich(
              TextSpan(
                text: 'Basit aly\n',
                style: GoogleFonts.getFont(
                  "Poppins",
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColor.textColor,
                  ),
                ),
                children: [
                  TextSpan(
                    text: 'You have request for apointment',
                    style: GoogleFonts.getFont(
                      "Poppins",
                      textStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColor.dTxtColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 20,
                  width: 20.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: AppColor.bgFillColor,
                  ),
                  child: const Center(
                    child: Text(
                      '1',
                      style: TextStyle(color: AppColor.whiteColor),
                    ),
                  ),
                ),
                Text(
                  'Today at 1:23 PM',
                  style: GoogleFonts.getFont(
                    "Poppins",
                    textStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColor.dTxtColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const VerticalSpeacing(10.0),
        const Divider(color: AppColor.dividerColor),
      ],
    );
  }
}
