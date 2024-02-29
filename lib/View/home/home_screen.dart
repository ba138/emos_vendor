import 'package:emos_vendor/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos_vendor/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../GlobalColors/colors.dart';
import '../../components/appBarField/appBar_field.dart';
import 'widgets/home_feature_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgFillColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: AppColor.whiteColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(50.0),
              topLeft: Radius.circular(50.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const VerticalSpeacing(30.0),
                AppBarField(ontap: () {
                  Navigator.pop(context);
                }),
                const VerticalSpeacing(46.0),
                Text(
                  "Enter your registration!",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
                const VerticalSpeacing(46.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RouteName.addHospital);
                      },
                      child: Container(
                        height: 100.0,
                        width: 115.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColor.textFieldColor,
                            width: 1.0,
                          ),
                        ),
                        child: const SizedBox(
                          height: 60.0,
                          width: 108.0,
                          child: HomeFeatures(
                            img: 'images/hospital.png',
                            name: 'Hospital',
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RouteName.addAmbulance);
                      },
                      child: Container(
                        height: 100.0,
                        width: 115.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColor.textFieldColor,
                            width: 1.0,
                          ),
                        ),
                        child: const SizedBox(
                          height: 60.0,
                          width: 108.0,
                          child: HomeFeatures(
                            img: 'images/ambulance.png',
                            name: 'Ambulance',
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RouteName.addClinic);
                      },
                      child: Container(
                        height: 100.0,
                        width: 115.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColor.textFieldColor,
                            width: 1.0,
                          ),
                        ),
                        child: const SizedBox(
                          height: 60.0,
                          width: 108.0,
                          child: HomeFeatures(
                            img: 'images/clinic.png',
                            name: 'Clinic',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const VerticalSpeacing(16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RouteName.addDrAtHome);
                      },
                      child: Container(
                        height: 100.0,
                        width: 115.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColor.textFieldColor,
                            width: 1.0,
                          ),
                        ),
                        child: const SizedBox(
                          height: 60.0,
                          width: 108.0,
                          child: HomeFeatures(
                            img: 'images/drHome.png',
                            name: 'Dr at Home',
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RouteName.addHomeCare);
                      },
                      child: Container(
                        height: 100.0,
                        width: 115.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColor.textFieldColor,
                            width: 1.0,
                          ),
                        ),
                        child: const SizedBox(
                          height: 60.0,
                          width: 108.0,
                          child: HomeFeatures(
                            img: 'images/homeCare.png',
                            name: 'Home Care',
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RouteName.addLaboratory);
                      },
                      child: Container(
                        height: 100.0,
                        width: 115.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColor.textFieldColor,
                            width: 1.0,
                          ),
                        ),
                        child: const SizedBox(
                          height: 60.0,
                          width: 108.0,
                          child: HomeFeatures(
                            img: 'images/labotoryTest.png',
                            name: 'Laboratory\n        Test',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const VerticalSpeacing(16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RouteName.addRadiology);
                      },
                      child: Container(
                        height: 100.0,
                        width: 115.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColor.textFieldColor,
                            width: 1.0,
                          ),
                        ),
                        child: const SizedBox(
                          height: 60.0,
                          width: 108.0,
                          child: HomeFeatures(
                            img: 'images/radiology.png',
                            name: 'Radiology',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 100.0,
                      width: 115.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColor.textFieldColor,
                          width: 1.0,
                        ),
                      ),
                      child: const SizedBox(
                        height: 60.0,
                        width: 108.0,
                        child: HomeFeatures(
                          img: 'images/pharmacy.png',
                          name: 'Pharmacy\n   (soon)',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100.0,
                      width: 115.0,
                      child: Container(
                        height: 60.0,
                        width: 108.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColor.textFieldColor,
                            width: 1.0,
                          ),
                        ),
                        child: const HomeFeatures(
                          img: 'images/others.png',
                          name: 'Other (soon)',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
