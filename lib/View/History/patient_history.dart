import 'package:emos_vendor/components/VerticalSpacing/vertical_spacing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../GlobalColors/colors.dart';
import '../Hospital/widgets/patients_widget.dart';

class PatientHistory extends StatelessWidget {
  const PatientHistory({super.key});

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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const VerticalSpeacing(16.0),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: AppColor.textColor,
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Text(
                    "History",
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
              const VerticalSpeacing(16.0),
              PatientCartWidget(fun: () {}),
              const VerticalSpeacing(10.0),
              PatientCartWidget(fun: () {}),
              const VerticalSpeacing(10.0),
              PatientCartWidget(fun: () {}),
              const VerticalSpeacing(10.0),
              PatientCartWidget(fun: () {}),
              const VerticalSpeacing(10.0),
              PatientCartWidget(fun: () {}),
              const VerticalSpeacing(10.0),
              PatientCartWidget(fun: () {}),
              const VerticalSpeacing(10.0),
              PatientCartWidget(fun: () {}),
              const VerticalSpeacing(10.0),
              PatientCartWidget(fun: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
