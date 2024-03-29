import 'package:emos_vendor/GlobalColors/colors.dart';
import 'package:emos_vendor/View/Hospital/profile/widgets/profile_widget.dart';
import 'package:emos_vendor/View/Hospital/profile/widgets/profile_widget_feature.dart';

import 'package:emos_vendor/components/VerticalSpacing/vertical_spacing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../routes/routes_name.dart';

class HomeCareProfile extends StatelessWidget {
  const HomeCareProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgFillColor,
      body: Column(
        children: [
          const VerticalSpeacing(50.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: AppColor.whiteColor,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.edit_outlined,
                  color: AppColor.whiteColor,
                ),
              ),
            ],
          ),
          const CircleAvatar(
            radius: 60.0,
            backgroundImage: NetworkImage(
              'https://www.w3schools.com/howto/img_avatar2.png',
            ),
          ),
          const VerticalSpeacing(12.0),
          Text(
            'Rani Singh',
            style: GoogleFonts.getFont(
              "Poppins",
              textStyle: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: AppColor.whiteColor,
              ),
            ),
          ),
          const VerticalSpeacing(20.0),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: AppColor.whiteColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const VerticalSpeacing(16.0),
                      const ProfileWidget(
                          icon: Icons.person_outline,
                          title: 'Name',
                          subtitle: 'Rani Singhs'),
                      const VerticalSpeacing(5.0),
                      const Divider(color: AppColor.dividerColor),
                      const ProfileWidget(
                          icon: Icons.mail_outline_rounded,
                          title: 'Email',
                          subtitle: 'Rani@gmail.com'),
                      const VerticalSpeacing(5.0),
                      const Divider(color: AppColor.dividerColor),
                      const ProfileWidget(
                          icon: Icons.phone_outlined,
                          title: 'Phone Number',
                          subtitle: '+1234462456754'),
                      const VerticalSpeacing(5.0),
                      const Divider(color: AppColor.dividerColor),
                      const ProfileWidget(
                          icon: Icons.location_on_outlined,
                          title: 'Address',
                          subtitle: '23 Karachi City, Ancholi,New Block'),
                      const VerticalSpeacing(46.0),
                      ProfileWidgetFeatures(
                        icon: Icons.emergency_outlined,
                        title: 'HomeCare Detail',
                        ontap: () {
                          Navigator.pushNamed(
                            context,
                            RouteName.homeCareDetailScreen,
                          );
                        },
                        iconColor: AppColor.bgFillColor,
                      ),
                      const VerticalSpeacing(18.0),
                      ProfileWidgetFeatures(
                        ontap: () {
                          Navigator.pushNamed(
                              context, RouteName.paymentHistory);
                        },
                        icon: Icons.payment_outlined,
                        title: 'Payment History',
                        iconColor: AppColor.bgFillColor,
                      ),
                      const VerticalSpeacing(18.0),
                      ProfileWidgetFeatures(
                        ontap: () {
                          Navigator.pushNamed(
                            context,
                            RouteName.ambulanceTotalReviewScreen,
                          );
                        },
                        icon: Icons.star,
                        title: 'Rating',
                        iconColor: Colors.amber,
                      ),
                      const VerticalSpeacing(18.0),
                      ProfileWidgetFeatures(
                        ontap: () {
                          // Navigator.pushNamed(
                          //     context, RouteName.medicalhistoryview);
                        },
                        icon: Icons.logout_outlined,
                        title: 'Logout',
                        iconColor: Colors.black,
                      ),
                      const VerticalSpeacing(36.0),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
