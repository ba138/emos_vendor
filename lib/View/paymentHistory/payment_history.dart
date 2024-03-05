import 'package:emos_vendor/GlobalColors/colors.dart';
import 'package:flutter/material.dart';

class PymentHistory extends StatelessWidget {
  const PymentHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: AppColor.bgFillColor,
            child: Stack(
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
                  bottom: -50,
                  left: 20.0,
                  right: 20.0,
                  child: Container(
                    height: 100,
                    width: 200,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
