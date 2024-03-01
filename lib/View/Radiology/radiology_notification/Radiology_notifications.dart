// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../GlobalColors/colors.dart';
import '../../../components/VerticalSpacing/vertical_spacing.dart';
import 'widgets/radiology_notificationWidget.dart';

class RadiologyNotificationScreen extends StatelessWidget {
  const RadiologyNotificationScreen({super.key});

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
                  RadiologyNotificationsWidget(),
                  VerticalSpeacing(10.0),
                  Divider(color: AppColor.blackColor),
                  VerticalSpeacing(20.0),
                  RadiologyNotificationsWidget(),
                  VerticalSpeacing(10.0),
                  Divider(color: AppColor.blackColor),
                  VerticalSpeacing(20.0),
                  RadiologyNotificationsWidget(),
                  VerticalSpeacing(10.0),
                  Divider(color: AppColor.blackColor),
                  VerticalSpeacing(20.0),
                  RadiologyNotificationsWidget(),
                  VerticalSpeacing(10.0),
                  Divider(color: AppColor.blackColor),
                  VerticalSpeacing(20.0),
                  RadiologyNotificationsWidget(),
                  VerticalSpeacing(10.0),
                  Divider(color: AppColor.blackColor),
                  VerticalSpeacing(20.0),
                  RadiologyNotificationsWidget(),
                  VerticalSpeacing(10.0),
                  Divider(color: AppColor.blackColor),
                  VerticalSpeacing(20.0),
                  RadiologyNotificationsWidget(),
                  VerticalSpeacing(10.0),
                  Divider(color: AppColor.blackColor),
                  VerticalSpeacing(20.0),
                  RadiologyNotificationsWidget(),
                  VerticalSpeacing(10.0),
                  Divider(color: AppColor.blackColor),
                  VerticalSpeacing(20.0),
                  RadiologyNotificationsWidget(),
                  VerticalSpeacing(10.0),
                  Divider(color: AppColor.blackColor),
                  VerticalSpeacing(20.0),
                  RadiologyNotificationsWidget(),
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
