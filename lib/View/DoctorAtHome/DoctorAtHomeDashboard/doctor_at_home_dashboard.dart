import 'package:emos_vendor/View/DoctorAtHome/DoctorHome/home_drathome_screen.dart';
import 'package:emos_vendor/View/DoctorAtHome/DoctorNotification/doctor_at_home_notifiction_screen.dart';
import 'package:emos_vendor/View/DoctorAtHome/DoctorProfile/doctor_at_home_profile.dart';
import 'package:emos_vendor/View/Hospital/chat/chat_screen.dart';
import 'package:emos_vendor/View/Hospital/notifications/notifications.dart';
import 'package:flutter/material.dart';

import '../../../GlobalColors/colors.dart';

class DoctorAtHomeDashboard extends StatefulWidget {
  const DoctorAtHomeDashboard({super.key});

  @override
  State<DoctorAtHomeDashboard> createState() => _DoctorAtHomeDashboardState();
}

class _DoctorAtHomeDashboardState extends State<DoctorAtHomeDashboard>
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
            HomeDrAtHome(),
            ChatScreen(),
            DrAtHomeNotification(),
            DoctorAtHomeProfile(),
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
