// ignore_for_file: file_names

import 'package:emos_vendor/components/VerticalSpacing/vertical_spacing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../GlobalColors/colors.dart';

class PaymentHistoryNotifications extends StatelessWidget {
  const PaymentHistoryNotifications({
    super.key,
    required this.onpress,
  });
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.0),
            spreadRadius: 0.5,
            blurRadius: 25,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          const VerticalSpeacing(20),
          InkWell(
            onTap: onpress,
            child: ListTile(
                leading: Container(
                  height: 56,
                  width: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://www.allheartcare.com/wp-content/uploads/2019/08/how-to-take-care-of-bed-bound-patient.png'),
                          fit: BoxFit.fill)),
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
                        text: 'diagnosing and treating injuries\n',
                        style: GoogleFonts.getFont(
                          "Poppins",
                          textStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColor.dTxtColor,
                          ),
                        ),
                      ),
                      TextSpan(
                        text: 'Check doctor: Rayees Khan',
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
                trailing: Text(
                  '\$125',
                  style: GoogleFonts.getFont(
                    "Poppins",
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColor.dTxtColor,
                    ),
                  ),
                )),
          ),
          const VerticalSpeacing(10.0),
          const Divider(color: AppColor.dividerColor),
        ],
      ),
    );
  }
}
