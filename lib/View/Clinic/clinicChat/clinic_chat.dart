import 'package:emos_vendor/View/Clinic/clinicChat/widget/clinic_chat_widget.dart';
import 'package:emos_vendor/View/Hospital/chat/widgets/chat_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../GlobalColors/colors.dart';

class ClinicChat extends StatelessWidget {
  const ClinicChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgFillColor,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: AppColor.whiteColor,
            )),
        title: Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                ),
              ),
              child: Stack(
                children: [
                  const CircleAvatar(
                    radius: 24,
                    backgroundImage: NetworkImage(
                      'https://user-images.githubusercontent.com/22866157/40578885-e3bf4e8e-6139-11e8-8be4-92fc3149f6f0.jpg',
                    ), // Set your profile image path here
                  ),
                  Positioned(
                    bottom: 0,
                    right: -2,
                    child: Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                          border: Border.all(
                            width: 2,
                            color: AppColor.bgFillColor,
                          ) // Online status indicator color
                          ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12.0),
            Text.rich(
              TextSpan(
                text: 'EMOS Support\n',
                style: GoogleFonts.getFont(
                  "Poppins",
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColor.whiteColor,
                  ),
                ),
                children: [
                  TextSpan(
                    text: 'Online',
                    style: GoogleFonts.getFont(
                      "Poppins",
                      textStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w200,
                        color: AppColor.whiteColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
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
        child: const ClinicChatWidget(),
      ),
    );
  }
}
