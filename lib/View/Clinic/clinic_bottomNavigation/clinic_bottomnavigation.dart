import 'package:emos_vendor/View/Clinic/clinicChat/clinic_chat.dart';
import 'package:emos_vendor/View/Clinic/clinic_notifications/clinic_nofication.dart';
import 'package:emos_vendor/View/Clinic/clinic_profile/clinic_profile.dart';
import 'package:flutter/material.dart';

import '../../../GlobalColors/colors.dart';
import '../clinic_home.dart';

class ClinicBottomBar extends StatefulWidget {
  const ClinicBottomBar({super.key});

  @override
  State<ClinicBottomBar> createState() => _ClinicBottomBarState();
}

class _ClinicBottomBarState extends State<ClinicBottomBar>
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
            ClinicHome(),
            ClinicChat(),
            ClinicNotificationScreen(),
            ClinicProfileScreen(),
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
