import 'package:emos_vendor/GlobalColors/colors.dart';
import 'package:emos_vendor/components/VerticalSpacing/vertical_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../clinic_profile/widget/total_ratings_clinic_Card.dart';

class ClinicTotalRating extends StatefulWidget {
  const ClinicTotalRating({super.key});

  @override
  State<ClinicTotalRating> createState() => _ClinicTotalRatingState();
}

class _ClinicTotalRatingState extends State<ClinicTotalRating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgFillColor,
      appBar: AppBar(
        backgroundColor: AppColor.bgFillColor,
        title: const Text(
          "Reviews",
          style: TextStyle(
            fontFamily: 'CenturyGothic',
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: AppColor.simpleBgTextColor,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: AppColor.whiteColor,
          ),
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            color: AppColor.simpleBgTextColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(24),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "4.0",
                      style: TextStyle(
                        fontFamily: 'CenturyGothic',
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff5790B9),
                      ),
                    ),
                    Text(
                      "/5",
                      style: TextStyle(
                        fontFamily: 'CenturyGothic',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff5790B9),
                      ),
                    ),
                  ],
                ),
                RatingBar.builder(
                  initialRating: 4,
                  unratedColor: const Color(0xffD6F0F9),
                  minRating: 1,
                  allowHalfRating: true,
                  glowColor: Colors.amber,
                  itemCount: 5,
                  itemSize: 40,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star_rate_rounded,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {},
                ),
                const VerticalSpeacing(12),
                const Text(
                  "based on 456 reviews",
                  style: TextStyle(
                    fontFamily: 'CenturyGothic',
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff5790B9),
                  ),
                ),
                const VerticalSpeacing(
                  46,
                ),
                const Divider(
                  color: Color(0xff5790B9),
                ),
                const VerticalSpeacing(
                  22,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return const ClinicTotalRatingCard();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
