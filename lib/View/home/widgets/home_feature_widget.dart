// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../GlobalColors/colors.dart';

class HomeFeatures extends StatelessWidget {
  const HomeFeatures({
    super.key,
    required this.img,
    required this.name,
  });
  final String img;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 40.0,
          width: 40.0,
          child: Image.asset(
            img,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          name,
          style: GoogleFonts.getFont(
            "Poppins",
            textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColor.textColor,
            ),
          ),
        )
      ],
    );
  }
}