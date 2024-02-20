// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../../GlobalColors/colors.dart';


class MyCheckBox extends StatefulWidget {
  const MyCheckBox({
    super.key,
  });
  @override
  _MyCheckBoxState createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool isChecked = false;

  void onChanged() {
    setState(() {
      isChecked = !isChecked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onChanged,
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          border: Border.all(
            width: 2.0,
            color: isChecked ? AppColor.bgFillColor : AppColor.bgFillColor,
          ),
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: isChecked
            ? Center(
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  color: isChecked ? AppColor.bgFillColor : Colors.transparent,
                ),
              )
            : null,
      ),
    );
  }
}
