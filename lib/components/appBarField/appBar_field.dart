// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../GlobalColors/colors.dart';


class AppBarField extends StatelessWidget {
  const AppBarField({
    super.key,
    required this.ontap,
  });
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            ontap();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: AppColor.textColor,
          ),
        ),
        SizedBox(width: MediaQuery.of(context).size.width / 2 - 120),
        SizedBox(
          width: 96,
          height: 24.0,
          child: Image.asset('images/emos1.png'),
        ),
      ],
    );
  }
}
