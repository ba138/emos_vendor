import 'package:emos_vendor/View/Clinic/clinic_notifications/widget/clinic_notificationWidget.dart';
import 'package:flutter/material.dart';

import '../../../GlobalColors/colors.dart';
import '../../../components/VerticalSpacing/vertical_spacing.dart';

class ClinicNotificationScreen extends StatelessWidget {
  const ClinicNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgFillColor,
      appBar: AppBar(
        toolbarHeight: 80,
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
        title: const Text(
          'Notifications',
          style: TextStyle(color: AppColor.whiteColor),
        ),
        centerTitle: true,
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
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: const [
              Column(
                children: [
                  VerticalSpeacing(20.0),
                  ClinicNotificationWidget(),
                  VerticalSpeacing(10.0),
                  Divider(color: AppColor.blackColor),
                  VerticalSpeacing(20.0),
                  ClinicNotificationWidget(),
                  VerticalSpeacing(10.0),
                  Divider(color: AppColor.blackColor),
                  VerticalSpeacing(20.0),
                  ClinicNotificationWidget(),
                  VerticalSpeacing(10.0),
                  Divider(color: AppColor.blackColor),
                  VerticalSpeacing(20.0),
                  ClinicNotificationWidget(),
                  VerticalSpeacing(10.0),
                  Divider(color: AppColor.blackColor),
                  VerticalSpeacing(20.0),
                  ClinicNotificationWidget(),
                  VerticalSpeacing(10.0),
                  Divider(color: AppColor.blackColor),
                  VerticalSpeacing(20.0),
                  ClinicNotificationWidget(),
                  VerticalSpeacing(10.0),
                  Divider(color: AppColor.blackColor),
                  VerticalSpeacing(20.0),
                  ClinicNotificationWidget(),
                  VerticalSpeacing(10.0),
                  Divider(color: AppColor.blackColor),
                  VerticalSpeacing(20.0),
                  ClinicNotificationWidget(),
                  VerticalSpeacing(10.0),
                  Divider(color: AppColor.blackColor),
                  VerticalSpeacing(20.0),
                  ClinicNotificationWidget(),
                  VerticalSpeacing(10.0),
                  Divider(color: AppColor.blackColor),
                  VerticalSpeacing(20.0),
                  ClinicNotificationWidget(),
                  VerticalSpeacing(10.0),
                  Divider(color: AppColor.blackColor)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
