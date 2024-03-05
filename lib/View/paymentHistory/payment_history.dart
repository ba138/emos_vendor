import 'package:emos_vendor/GlobalColors/colors.dart';
import 'package:flutter/material.dart';

class PymentHistory extends StatelessWidget {
  const PymentHistory({super.key});
  final double tHeight = 374.0;
  final double top = 301.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                  height: 200,
                  width: double.infinity,
                  color: AppColor.bgFillColor,
                  child: Column(
                    children: [
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
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
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 5),
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
                        bottom: 0,
                        left: 0,
                        right: 0,
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
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 5),
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
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }
}

// _buildCoverBar() {
//   return Container(
//     height: tHeight,
//     width: double.infinity,
//     decoration: const BoxDecoration(
//       gradient: LinearGradient(
//         begin: Alignment.topCenter,
//         end: Alignment.bottomCenter,
//         colors: [Color(0xff2AA39C), Color(0xff2AA39C)],
//       ),
//       borderRadius: BorderRadius.only(
//         bottomLeft: Radius.circular(30.0),
//         bottomRight: Radius.circular(30.0),
//       ),
//     ),
//   );
// }
