import 'package:emos_vendor/GlobalColors/colors.dart';
import 'package:emos_vendor/View/Hospital/widgets/patients_widget.dart';
import 'package:emos_vendor/View/Hospital/widgets/top_hospitals_widget.dart';
import 'package:emos_vendor/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos_vendor/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../components/customswitch/customswitch.dart';

class HospitalHome extends StatelessWidget {
  const HospitalHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
        const VerticalSpeacing(16.0),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.65,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your Hospital",
                    style: GoogleFonts.getFont(
                      "Roboto",
                      textStyle: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: AppColor.textColor,
                      ),
                    ),
                  ),
                  const VerticalSpeacing(10.0),
                  TopHospitalsCardWidget(
                    fun: () {},
                  ),
                  const VerticalSpeacing(16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'History',
                        style: GoogleFonts.getFont(
                          "Poppins",
                          textStyle: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: AppColor.textColor,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, RouteName.patientHistory);
                        },
                        child: Text(
                          'View all',
                          style: GoogleFonts.getFont(
                            "Poppins",
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColor.simpleBgbuttonColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const VerticalSpeacing(10.0),
                  PatientCartWidget(fun: () {}),
                  const VerticalSpeacing(10.0),
                  PatientCartWidget(fun: () {}),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
