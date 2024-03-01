import 'package:emos_vendor/GlobalColors/colors.dart';
import 'package:emos_vendor/components/VerticalSpacing/vertical_spacing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PatientDetailDialog extends StatelessWidget {
  const PatientDetailDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Container(
                height: 113,
                width: 113,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://media.istockphoto.com/id/1311511363/photo/headshot-portrait-of-smiling-male-doctor-with-tablet.jpg?s=612x612&w=0&k=20&c=w5TecWtlA_ZHRpfGh20II-nq5AvnhpFu6BfOfMHuLMA="),
                      fit: BoxFit.fill),
                ),
              ),
            ),
            const VerticalSpeacing(12),
            Center(
              child: Text(
                "Basit Aly",
                style: GoogleFonts.getFont(
                  "Roboto",
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColor.textColor,
                  ),
                ),
              ),
            ),
            const VerticalSpeacing(16),
            Text(
              "Bio",
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
              "You probably take vitamins and supplements with the goal of improving your health. ",
              style: GoogleFonts.getFont(
                "Roboto",
                textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColor.bgFillColor,
                ),
              ),
            ),
            const VerticalSpeacing(12),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      "Schedule ",
                      style: GoogleFonts.getFont(
                        "Roboto",
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColor.textColor,
                        ),
                      ),
                    ),
                    const VerticalSpeacing(8),
                    Text(
                      "TUE : 21",
                      style: GoogleFonts.getFont(
                        "Roboto",
                        textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColor.bgFillColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    Text(
                      "Visiting Hours",
                      style: GoogleFonts.getFont(
                        "Roboto",
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColor.textColor,
                        ),
                      ),
                    ),
                    const VerticalSpeacing(8),
                    Text(
                      "11:00 AM - 12:00 AM",
                      style: GoogleFonts.getFont(
                        "Roboto",
                        textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColor.bgFillColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const VerticalSpeacing(8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 108,
                    height: 46,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: AppColor.bgFillColor),
                    ),
                    child: Center(
                      child: Text(
                        "Reject",
                        style: GoogleFonts.getFont(
                          "Roboto",
                          textStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColor.bgFillColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 108,
                    height: 46,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: AppColor.bgFillColor),
                        color: AppColor.bgFillColor),
                    child: Center(
                      child: Text(
                        "Accept",
                        style: GoogleFonts.getFont(
                          "Roboto",
                          textStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColor.whiteColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const VerticalSpeacing(20),
          ],
        ),
      ),
    );
  }
}
