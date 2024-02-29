import 'package:emos_vendor/View/HomeCare/HomeCareHome/home_care_home_screen.dart';
import 'package:emos_vendor/View/HomeCare/HomeCareNotification/home_care_notifiction_screen.dart';
import 'package:emos_vendor/View/HomeCare/HomeCareProfile/home_care_profile.dart';
import 'package:emos_vendor/View/Hospital/chat/chat_screen.dart';
import 'package:flutter/material.dart';

import '../../../GlobalColors/colors.dart';

class HomeCareDashboard extends StatefulWidget {
  const HomeCareDashboard({super.key});

  @override
  State<HomeCareDashboard> createState() => _HomeCareDashboardState();
}

class _HomeCareDashboardState extends State<HomeCareDashboard>
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
            HomeCareHome(),
            ChatScreen(),
            HomeCareNotification(),
            HomeCareProfile(),
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
