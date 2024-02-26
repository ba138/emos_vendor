// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../GlobalColors/colors.dart';

class ClinicNotificationWidget extends StatelessWidget {
  const ClinicNotificationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        Icons.notifications,
        size: 30,
        color: AppColor.bgFillColor,
      ),
      title: Text.rich(
        TextSpan(
          text: 'Dr. Sutash Sing\n',
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
              text: 'diagnosing and treating injuries',
              style: GoogleFonts.getFont(
                "Poppins",
                textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
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
                fontWeight: FontWeight.bold,
                color: AppColor.dTxtColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}