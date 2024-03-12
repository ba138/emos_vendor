import 'package:emos_vendor/GlobalColors/colors.dart';
import 'package:emos_vendor/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos_vendor/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LabotryDetailView extends StatefulWidget {
  const LabotryDetailView({super.key});

  @override
  State<LabotryDetailView> createState() => _HomeCareDetailViewState();
}

class _HomeCareDetailViewState extends State<LabotryDetailView> {
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
                        width: MediaQuery.of(context).size.width / 2 - 170),
                    Text(
                      "laboratory details",
                      style: GoogleFonts.getFont(
                        "Roboto",
                        textStyle: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: AppColor.textColor,
                        ),
                      ),
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 - 160),
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          RouteName.addLaboratory,
                        );
                      },
                      icon: const Icon(
                        Icons.edit,
                        color: AppColor.textColor,
                      ),
                    ),
                  ],
                ),
                const VerticalSpeacing(46.0),
                Center(
                  child: Container(
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
                ),
                const VerticalSpeacing(30.0),
                Text(
                  "Laboratory Name",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
                Text(
                  "Basit Aly Shah",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: AppColor.textColor2,
                    ),
                  ),
                ),
                const VerticalSpeacing(30.0),
                Text(
                  "Laboratory Location",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
                Text(
                  "Delhi India",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: AppColor.textColor2,
                    ),
                  ),
                ),
                const VerticalSpeacing(30.0),
                const Text(
                  "Avaliable Test",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color:
                        AppColor.textColor, // Replace with your desired color
                  ),
                ),
                Text(
                  "Blood-Test,Covid-19-Test,Urin-Test",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: AppColor.textColor2,
                    ),
                  ),
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
                Text(
                  "+912345643",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: AppColor.textColor2,
                    ),
                  ),
                ),
                const VerticalSpeacing(30.0),
                Text(
                  "Laboratory timing",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
                Text(
                  "12:00Pm to 12:00Am",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: AppColor.textColor2,
                    ),
                  ),
                ),
                const VerticalSpeacing(30.0),
                const Text(
                  "Visit Charges",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color:
                          AppColor.textColor // Replace with your desired color
                      ),
                ),
                Text(
                  "1000INR",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: AppColor.textColor2,
                    ),
                  ),
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
