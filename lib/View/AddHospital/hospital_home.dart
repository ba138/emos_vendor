import 'package:emos_vendor/GlobalColors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../components/customswitch/customswitch.dart';

class HospitalHome extends StatelessWidget {
  const HospitalHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          height: 200.0,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: AppColor.bgFillColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0))),
          child: Row(
            children: [
              const SizedBox(width: 30.0),
              const CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&q=80&w=1587&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                ),
              ),
              const SizedBox(width: 10.0),
              Text.rich(
                TextSpan(
                  text: 'Hi Hiren, \n',
                  style: GoogleFonts.getFont(
                    "Poppins",
                    textStyle: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: AppColor.whiteColor,
                    ),
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'Welcome back!',
                      style: TextStyle(
                        color: AppColor.hometxtColor,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 30.0),
              const CustomSwitch(),
            ],
          ),
        ),
      ]),
    );
  }
}
