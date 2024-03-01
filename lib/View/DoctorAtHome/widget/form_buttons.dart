import 'package:emos_vendor/GlobalColors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormButtons extends StatefulWidget {
  const FormButtons({super.key, required this.number, required this.name});
  final String number;
  final String name;

  @override
  State<FormButtons> createState() => _FormButtonsState();
}

class _FormButtonsState extends State<FormButtons> {
  bool isPress = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              widget.number,
              style: GoogleFonts.getFont(
                "Roboto",
                textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColor.bgFillColor,
                ),
              ),
            ),
            const SizedBox(
              width: 14,
            ),
            Text(
              widget.name,
              style: GoogleFonts.getFont(
                "Roboto",
                textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColor.bgFillColor,
                ),
              ),
            ),
          ],
        ),
        InkWell(
          onTap: () {
            setState(() {
              isPress = !isPress;
            });
          },
          child: Container(
            height: 16,
            width: 16,
            decoration: BoxDecoration(
                color: isPress ? AppColor.bgFillColor : Colors.transparent,
                border: Border.all(
                  color: AppColor.bgFillColor,
                )),
          ),
        )
      ],
    );
  }
}
