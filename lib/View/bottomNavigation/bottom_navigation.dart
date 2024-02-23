import 'package:emos_vendor/View/Hospital/hospital_home.dart';
import 'package:emos_vendor/View/chat/chat_screen.dart';
import 'package:emos_vendor/View/notifications/notifications.dart';
import 'package:emos_vendor/View/profile/profile.dart';
import 'package:flutter/material.dart';

import '../../GlobalColors/colors.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar>
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
            HospitalHome(),
            ChatScreen(),
            NotificationScreen(),
            ProfileScreen(),
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
