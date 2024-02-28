import 'package:emos_vendor/GlobalColors/colors.dart';
import 'package:emos_vendor/components/RoundedButton/rounded_button.dart';
import 'package:emos_vendor/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos_vendor/components/coustem_text_field/coustem_text_field.dart';
import 'package:emos_vendor/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AmbulanceDetailEditScreen extends StatefulWidget {
  const AmbulanceDetailEditScreen({super.key});

  @override
  State<AmbulanceDetailEditScreen> createState() =>
      _AmbulanceDetailEditScreenState();
}

class _AmbulanceDetailEditScreenState extends State<AmbulanceDetailEditScreen> {
  String selectedPrice = '200Pkr'; // Default value
  String selectedType = "Private";
  String ambulanceDetail = "Basic";
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
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: AppColor.textColor,
                      ),
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 - 140),
                    Text(
                      "Ambulance details",
                      style: GoogleFonts.getFont(
                        "Roboto",
                        textStyle: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: AppColor.textColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const VerticalSpeacing(46.0),
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
                const VerticalSpeacing(30.0),
                Text(
                  "Ambulance Name",
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
                  hintText: 'Enter your ambulance name...',
                ),
                const VerticalSpeacing(30.0),
                Text(
                  "Ambulance Location",
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
                  hintText: 'Enter your ambulance location...',
                ),
                const VerticalSpeacing(30.0),
                const Text(
                  "Ambulance Details",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color:
                        AppColor.textColor, // Replace with your desired color
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
                const Text(
                  "Ambulance Type",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color:
                        AppColor.textColor, // Replace with your desired color
                  ),
                ),
                DropdownButton<String>(
                  isExpanded: true,
                  value: ambulanceDetail,
                  icon: const Icon(Icons.expand_more_outlined),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(
                      color: AppColor
                          .bgFillColor), // Replace with your desired color
                  onChanged: (String? newValue) {
                    setState(() {
                      ambulanceDetail = newValue!;
                    });
                  },
                  items: <String>[
                    'Basic',
                    'ICU on Wheels',
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
                  "Ambulance timing",
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
                  hintText: 'Enter ambulance timing...',
                ),
                const VerticalSpeacing(30.0),
                const Text(
                  "Per Kilometer Price",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color:
                          AppColor.textColor // Replace with your desired color
                      ),
                ),
                DropdownButton<String>(
                  isExpanded: true,
                  value: selectedPrice,
                  icon: const Icon(Icons.expand_more_outlined),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(
                      color: AppColor
                          .bgFillColor), // Replace with your desired color
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedPrice = newValue!;
                    });
                  },
                  items: <String>[
                    '200Pkr',
                    '300Pkr',
                    '400Pkr',
                    '500Pkr'
                  ] // Add more options as needed
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                const VerticalSpeacing(22.0),
                RoundedButton(
                  title: 'Continue',
                  onpress: () {
                    Navigator.pushNamed(context, RouteName.ambulancedashboard);
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
