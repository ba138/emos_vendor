import 'package:emos_vendor/GlobalColors/colors.dart';
import 'package:emos_vendor/View/Hospital/widgets/patients_widget.dart';
import 'package:emos_vendor/View/Hospital/widgets/top_hospitals_widget.dart';
import 'package:emos_vendor/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos_vendor/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HospitalHome extends StatefulWidget {
  const HospitalHome({super.key});

  @override
  State<HospitalHome> createState() => _HospitalHomeState();
}

class _HospitalHomeState extends State<HospitalHome> {
  bool isOnline = false;
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
              Container(
                height: 30,
                width: 94,
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // mapRepository.driverIsOffLineNow();
                        setState(() {
                          isOnline = false;
                          // driveronline = false;
                        });
                      },
                      child: Container(
                        height: 30,
                        width: 46,
                        decoration: BoxDecoration(
                          color: isOnline ? null : const Color(0xff7EE3CB),
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Center(
                          child: Text('Offline',
                              style: GoogleFonts.getFont(
                                "Poppins",
                                textStyle: TextStyle(
                                    color:
                                        isOnline ? Colors.black : Colors.white,
                                    fontSize: 12),
                              )),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        setState(() {
                          isOnline = true;
                          // driveronline = true;
                        });
                      },
                      child: Container(
                        height: 30,
                        width: 46,
                        decoration: BoxDecoration(
                          color: isOnline ? const Color(0xff7EE3CB) : null,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            'Online',
                            style: GoogleFonts.getFont(
                              "Poppins",
                              textStyle: TextStyle(
                                  color: isOnline ? Colors.white : Colors.black,
                                  fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const VerticalSpeacing(16.0),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.59,
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
                  PatientCartWidget(fun: () {
                    Navigator.pushNamed(context, RouteName.patientDetailWidget);
                  }),
                  const VerticalSpeacing(10.0),
                  PatientCartWidget(fun: () {
                    Navigator.pushNamed(context, RouteName.patientDetailWidget);
                  }),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
