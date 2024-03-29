// ignore_for_file: file_names

import 'package:emos_vendor/View/DoctorAtHome/widget/form_buttons.dart';
import 'package:emos_vendor/components/RoundedButton/rounded_button.dart';
import 'package:emos_vendor/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos_vendor/components/appBarField/appBar_field.dart';
import 'package:emos_vendor/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../GlobalColors/colors.dart';
import '../../components/coustem_text_field/coustem_text_field.dart';

class AddHospital extends StatefulWidget {
  const AddHospital({super.key});

  @override
  State<AddHospital> createState() => _AddHospitalState();
}

class _AddHospitalState extends State<AddHospital> {
  String selectedType = "Private";

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
                DropdownButton<String>(
                  isExpanded: true,
                  value: selectedType,
                  icon: const Icon(Icons.expand_more_outlined),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(
                      color: AppColor
                          .bgFillColor), // Replace with your desired color
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedType = newValue!;
                    });
                  },
                  items: <String>[
                    'Private',
                    'Public',
                    'Goverment',
                    'SemiGoverment'
                  ] // Add more options as needed
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                const VerticalSpeacing(30.0),
                Text(
                  "Hospital Type",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
                const VerticalSpeacing(12.0),
                const FormButtons(number: "1", name: 'Multi Specialist'),
                const VerticalSpeacing(12),
                const FormButtons(number: "2", name: 'General'),
                const VerticalSpeacing(12),
                const FormButtons(number: "3", name: 'Pediatrics'),
                const VerticalSpeacing(12),
                const FormButtons(number: "4", name: 'Orthopedics'),
                const VerticalSpeacing(12),
                const FormButtons(number: "5", name: 'Cardiology'),
                const VerticalSpeacing(30.0),
                Text(
                  "Medical Type",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
                const VerticalSpeacing(12.0),
                const FormButtons(number: "1", name: 'CashLess'),
                const VerticalSpeacing(12),
                const FormButtons(number: "2", name: 'GenReimbursementeral'),
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
                    Navigator.pushNamed(context, RouteName.bottomBar);
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
