import 'package:emos_vendor/GlobalColors/colors.dart';
import 'package:flutter/material.dart';

class AddProfileWidget extends StatelessWidget {
  const AddProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: 72,
      decoration: const BoxDecoration(
        color: Color(0xffC9F5F3),
        shape: BoxShape.circle,
      ),
      child: const Center(
        child: Icon(
          Icons.camera_alt_outlined,
          color: AppColor.bgFillColor,
        ),
      ),
    );
  }
}
