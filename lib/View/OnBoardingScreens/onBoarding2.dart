// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../GlobalColors/colors.dart';
import '../../components/RoundedButton/rounded_button.dart';
import '../../components/VerticalSpacing/vertical_spacing.dart';
import '../../components/backgroundColor/bgColor.dart';
import '../../routes/routes_name.dart';

class OnBoardingScreen2 extends StatelessWidget {
  const OnBoardingScreen2({super.key});

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
                    'images/image2.png',
                    height: 370,
                    width: 370,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    "Covid-19 Prevention",
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
                    "Follow up the Covid-19 epidemic in the world and the development of vaccines",
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
                    ],
                  ),
                  const VerticalSpeacing(140),
                  RoundedButton(
                      title: 'Get Started',
                      onpress: () {
                        Navigator.pushNamed(
                          context,
                          RouteName.onBoarding3,
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
