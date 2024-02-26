import 'package:emos_vendor/View/Radiology/Radiology_chat/radiology_chatScreen.dart';
import 'package:emos_vendor/View/Radiology/Radiology_notification/Radiology_notifications.dart';
import 'package:emos_vendor/View/Radiology/Radiology_profile/labotry_profile.dart';
import 'package:emos_vendor/View/Radiology/radiology_home.dart';
import 'package:flutter/material.dart';

import '../../../GlobalColors/colors.dart';

class RadiologyBottomBar extends StatefulWidget {
  const RadiologyBottomBar({super.key});

  @override
  State<RadiologyBottomBar> createState() => _RadiologyBottomBarState();
}

class _RadiologyBottomBarState extends State<RadiologyBottomBar>
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
            RadiologyHome(),
            RadiologyChatScreen(),
            RadiologyNotificationScreen(),
            RadiologyProfileScreen(),
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
