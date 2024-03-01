// ignore_for_file: file_names

import 'package:emos_vendor/View/Laboratory/labotry_chat/labotry_chatScreen.dart';
import 'package:emos_vendor/View/Laboratory/labotry_home.dart';
import 'package:emos_vendor/View/Laboratory/labotry_notification/Labotry_notifications.dart';
import 'package:emos_vendor/View/Laboratory/labotry_profile/labotry_profile.dart';
import 'package:flutter/material.dart';

import '../../../GlobalColors/colors.dart';

class LabotoryBottomBar extends StatefulWidget {
  const LabotoryBottomBar({super.key});

  @override
  State<LabotoryBottomBar> createState() => _LabotoryBottomBarState();
}

class _LabotoryBottomBarState extends State<LabotoryBottomBar>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  int selectIndex = 0;
  onItemClick(int index) {
    setState(() {
      selectIndex = index;
      tabController!.index = selectIndex;
    });
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        return TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: tabController,
          children: const [
            LabotryHome(),
            LabotryChatScreen(),
            LabotryNotificationScreen(),
            LabotryProfileScreen(),
          ],
        );
      }),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: ('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_outlined,
            ),
            label: ('chat'),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_outlined,
              ),
              label: ('notification')),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            label: ('profile'),
          ),
        ],
        unselectedItemColor: AppColor.grayColor,
        selectedItemColor: AppColor.bgFillColor,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        currentIndex: selectIndex,
        onTap: onItemClick,
      ),
    );
  }
}
