import 'package:emos_vendor/components/RoundedButton/rounded_button.dart';
import 'package:emos_vendor/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos_vendor/components/appBarField/appBar_field.dart';
import 'package:emos_vendor/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../GlobalColors/colors.dart';
import '../../components/coustem_text_field/coustem_text_field.dart';

class AddHospital extends StatelessWidget {
  const AddHospital({super.key});

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
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const VerticalSpeacing(30.0),
                AppBarField(ontap: () {
                  Navigator.pop(context);
                }),
                const VerticalSpeacing(46.0),
                Text(
                  "Enter your hospital details",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
                const VerticalSpeacing(30.0),
                Text(
                  "Hospital Name",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
                const TextFieldCustom(
                  // controller: emailController,
                  enablePrefixIcon: false,
                  maxLines: 1,
                  icon: Icons.local_hospital_outlined,
                  hintText: 'Enter your hospital name...',
                ),
                const VerticalSpeacing(30.0),
                Text(
                  "Hospital Address",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
                const TextFieldCustom(
                  // controller: emailController,
                  enablePrefixIcon: false,
                  maxLines: 1,
                  icon: Icons.location_city_outlined,
                  hintText: 'Enter your hospital address...',
                ),
                const VerticalSpeacing(30.0),
                Text(
                  "Hospital Catagory",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
                const TextFieldCustom(
                  // controller: emailController,
                  enablePrefixIcon: false,
                  maxLines: 1,
                  icon: Icons.location_city_outlined,
                  hintText: 'Enter your hospital catagory...',
                ),
                const VerticalSpeacing(30.0),
                Text(
                  "Phone No",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
                const TextFieldCustom(
                  // controller: emailController,
                  enablePrefixIcon: false,
                  maxLines: 1,
                  icon: Icons.location_city_outlined,
                  hintText: 'Enter your ph no...',
                ),
                const VerticalSpeacing(30.0),
                Text(
                  "hospital date open and off",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
                const TextFieldCustom(
                  // controller: emailController,
                  enablePrefixIcon: false,
                  maxLines: 1,
                  icon: Icons.location_city_outlined,
                  hintText: 'Enter date of open and close...',
                ),
                const VerticalSpeacing(16.0),
                Text(
                  "Hospital Images",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
                const VerticalSpeacing(10.0),
                Row(
                  children: [
                    Container(
                      height: 113,
                      width: 121,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        image: const DecorationImage(
                          image: NetworkImage(
                            'https://shalamarhospital.org.pk/wp-content/uploads/2023/08/BQR_5253-scaled.jpg',
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Center(
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.upload_outlined,
                              size: 60.0,
                              color: AppColor.whiteColor,
                            )),
                      ),
                    ),
                    const SizedBox(width: 12.0),
                    Container(
                      height: 113,
                      width: 121,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://jmcp.edu.pk/wp-content/uploads/2023/09/jth-2.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Center(
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.upload_outlined,
                              size: 60.0,
                              color: AppColor.whiteColor,
                            )),
                      ),
                    ),
                  ],
                ),
                const VerticalSpeacing(43.0),
                RoundedButton(
                  title: 'Continue',
                  onpress: () {
                    Navigator.pushNamed(context, RouteName.hospitalHome);
                  },
                  bgColor: AppColor.bgFillColor,
                  titleColor: AppColor.whiteColor,
                ),
                const VerticalSpeacing(46.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
