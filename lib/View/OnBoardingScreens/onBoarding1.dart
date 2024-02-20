// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../GlobalColors/colors.dart';
import '../../components/RoundedButton/rounded_button.dart';
import '../../components/VerticalSpacing/vertical_spacing.dart';
import '../../components/backgroundColor/bgColor.dart';
import '../../routes/routes_name.dart';

class OnBoardingScreen1 extends StatelessWidget {
  const OnBoardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: GradientBackground(
            child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: ListView(
            children: [
              Column(
                children: [
                  Image.asset(
                    'images/image1.png',
                    height: 370,
                    width: 370,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    "Easy Appointment",
                    style: GoogleFonts.getFont(
                      "Roboto",
                      textStyle: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w900,
                        color: AppColor.simpleBgTextColor,
                      ),
                    ),
                  ),
                  const VerticalSpeacing(8),
                  Text(
                    "Experience Medilab's quick and convenient\n booking service",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      "Roboto",
                      textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: AppColor.simpleBgTextColor,
                      ),
                    ),
                  ),
                  const VerticalSpeacing(32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColor.simpleBgTextColor,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColor.grayColor,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColor.grayColor,
                        ),
                      ),
                    ],
                  ),
                  const VerticalSpeacing(140),
                  RoundedButton(
                      title: 'Get Started',
                      onpress: () {
                        Navigator.pushNamed(
                          context,
                          RouteName.onBoarding2,
                        );
                      },
                      bgColor: AppColor.linearBgbuttonColor,
                      titleColor: AppColor.linearBgTextColor),
                  const VerticalSpeacing(40),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
