import 'package:emos_vendor/GlobalColors/colors.dart';
import 'package:emos_vendor/View/Hospital/notifications/widgets/notificationWidget.dart';
import 'package:emos_vendor/View/paymentHistory/widgets/payment_history_notifications.dart';
import 'package:emos_vendor/components/VerticalSpacing/vertical_spacing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Hospital/widgets/top_hospitals_widget.dart';

class PymentHistory extends StatefulWidget {
  const PymentHistory({super.key});

  @override
  State<PymentHistory> createState() => _PymentHistoryState();
}

class _PymentHistoryState extends State<PymentHistory> {
  @override
  Widget build(BuildContext context) {
    String? selectedMonth;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: AppColor.bgFillColor,
              ),
              Positioned(
                top: 50,
                child: Row(
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
                    SizedBox(width: MediaQuery.of(context).size.width / 5),
                    const Text(
                      'Payment History',
                      style: TextStyle(
                        color: AppColor.hometxtColor,
                        fontSize: 24.0,
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                left: 20,
                right: 20,
                top: 150,
                child: Container(
                  height: 106,
                  width: 341,
                  decoration: BoxDecoration(
                    color: AppColor.bgFillColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        spreadRadius: 0.0,
                        blurRadius: 4.0,
                        offset: const Offset(2, 2),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            const VerticalSpeacing(20.0),
                            Text(
                              "This Month",
                              style: GoogleFonts.getFont(
                                "Roboto",
                                textStyle: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.whiteColor,
                                ),
                              ),
                            ),
                            Text(
                              "\$15000",
                              style: GoogleFonts.getFont(
                                "Roboto",
                                textStyle: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.whiteColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 62,
                          height: 28,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: DropdownButton<String>(
                            underline:
                                const SizedBox(), // Remove the default underline
                            iconSize: 20,
                            isExpanded: true,
                            value:
                                selectedMonth, // Assuming selectedMonth is a variable holding the selected month value
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedMonth =
                                    newValue; // Update selected month when user changes
                              });
                            },
                            items: <String>[
                              'January',
                              'February',
                              'March',
                              'April',
                              'May',
                              'June',
                              'July',
                              'August',
                              'September',
                              'October',
                              'November',
                              'December'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: const TextStyle(color: Colors.white),
                                ),
                              );
                            }).toList(),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const VerticalSpeacing(70.0),
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height*0.6,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: ListView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Received Payment',
                        style: TextStyle(
                          color: AppColor.bgFillColor,
                          fontSize: 16.0,
                          textBaseline: TextBaseline.ideographic,
                        ),
                      ),
                      const VerticalSpeacing(20.0),
                      PaymentHistoryNotifications(onpress: () {}),
                         const VerticalSpeacing(10.0),
                      PaymentHistoryNotifications(onpress: () {}),
                         const VerticalSpeacing(10.0),
                      PaymentHistoryNotifications(onpress: () {}),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
