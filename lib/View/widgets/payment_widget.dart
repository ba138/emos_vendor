import 'package:emos_vendor/GlobalColors/colors.dart';
import 'package:emos_vendor/components/VerticalSpacing/vertical_spacing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentWidget extends StatelessWidget {
  final String name;
  final String value;
  const PaymentWidget({super.key, required this.name, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpeacing(16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: GoogleFonts.getFont(
                "Roboto",
                textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColor.textColor,
                ),
              ),
            ),
            Text(
              value,
              style: GoogleFonts.getFont(
                "Roboto",
                textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColor.textColor,
                ),
              ),
            ),
          ],
        ),
        const Divider(
          color: AppColor.dividerColor,
        )
      ],
    );
  }
}
