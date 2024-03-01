import 'package:emos_vendor/View/DoctorAtHome/widget/add_profile_widget.dart';
import 'package:emos_vendor/View/DoctorAtHome/widget/form_buttons.dart';
import 'package:emos_vendor/components/RoundedButton/rounded_button.dart';
import 'package:emos_vendor/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos_vendor/components/appBarField/appBar_field.dart';
import 'package:emos_vendor/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../GlobalColors/colors.dart';
import '../../../components/coustem_text_field/coustem_text_field.dart';

class AddDctorAtHome extends StatefulWidget {
  const AddDctorAtHome({super.key});

  @override
  State<AddDctorAtHome> createState() => _AddDctorAtHomeState();
}

class _AddDctorAtHomeState extends State<AddDctorAtHome> {
  String selectedPrice = '200INR'; // Default value
  String selectedType = "Endocrinology";
  String doctorLanguage = "Hindi";
  String doctorExperience = "2Years";
  String doctorDegress = "Doctor of Medicine";
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
                  "Doctor Details",
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
                const AddProfileWidget(),
                const VerticalSpeacing(30.0),
                Text(
                  "Doctor Name",
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
                  hintText: 'Enter your doctor name...',
                ),
                const VerticalSpeacing(30.0),
                Text(
                  "Doctor Specialist",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
                const FormButtons(number: "1", name: 'Endocrinology'),
                const VerticalSpeacing(12),
                const FormButtons(number: "2", name: 'Neurologist'),
                const VerticalSpeacing(12),
                const FormButtons(number: "3", name: 'Dermatologist'),
                const VerticalSpeacing(12),
                const FormButtons(number: "4", name: 'Pediatrician'),
                const VerticalSpeacing(12),
                const FormButtons(number: "5", name: 'Psychiatrist'),
                const VerticalSpeacing(12),
                const FormButtons(number: "6", name: 'Gastroenterology'),
                const VerticalSpeacing(12),
                const FormButtons(number: "7", name: 'Cardiologist'),
                const VerticalSpeacing(12),
                const FormButtons(number: "8", name: 'Ophthalmologist'),
                const VerticalSpeacing(30.0),
                Text(
                  "Doctor Education",
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
                  hintText: 'Enter your education...',
                ),
                const VerticalSpeacing(30.0),
                Text(
                  "Doctor language",
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
                  value: doctorLanguage,
                  icon: const Icon(Icons.expand_more_outlined),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(
                      color:
                          Color(0xFF2AA39C)), // Replace with your desired color
                  onChanged: (String? newValue) {
                    setState(() {
                      doctorLanguage = newValue!;
                    });
                  },
                  items: <String>[
                    'Hindi',
                    'English',
                    'Urdu',
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
                  "Doctor location",
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
                  hintText: 'New Dehli India...',
                ),
                const VerticalSpeacing(30.0),
                Text(
                  "Experience",
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
                  value: doctorExperience,
                  icon: const Icon(Icons.expand_more_outlined),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(
                    color: AppColor.bgFillColor,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      doctorExperience = newValue!;
                    });
                  },
                  items: <String>[
                    '2Years',
                    '4Years',
                    '6Years',
                    'More Than 8Years',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                const VerticalSpeacing(30.0),
                Text(
                  "Doctor Degrees",
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
                  value: doctorDegress,
                  icon: const Icon(Icons.expand_more_outlined),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(
                    color: AppColor.bgFillColor,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      doctorDegress = newValue!;
                    });
                  },
                  items: <String>[
                    'Doctor of Medicine',
                    'Doctor of Osteopathic Medicine',
                    'Doctor of Dental Medicine',
                    'Doctor of Veterinary Medicine',
                    'Doctor of Pharmacy',
                    'Doctor of Nursing Practice',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                const VerticalSpeacing(30.0),
                Text(
                  "Visiting Charge",
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
                  value: selectedPrice,
                  icon: const Icon(Icons.expand_more_outlined),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(
                    color: AppColor.bgFillColor,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedPrice = newValue!;
                    });
                  },
                  items: <String>[
                    '200INR',
                    '400INR',
                    '600INR',
                    '800INR',
                    '1000INR',
                    '1200INR',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                const VerticalSpeacing(30.0),
                Text(
                  "Doctor timing",
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
                  hintText: '12:30Am to 9:30Pm ...',
                ),
                const VerticalSpeacing(30.0),
                Text(
                  "Doctor Bio",
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
                  hintText: 'Enter your Bio...',
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
                const VerticalSpeacing(43.0),
                RoundedButton(
                  title: 'Continue',
                  onpress: () {
                    Navigator.pushNamed(
                      context,
                      RouteName.doctorathomedashboard,
                    );
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
