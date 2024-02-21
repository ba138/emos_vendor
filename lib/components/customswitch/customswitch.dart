import 'package:flutter/material.dart';

import '../../GlobalColors/colors.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({super.key});

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    // Define colors based on the switch state
    Color backgroundColor = isSwitched ? Colors.green : Colors.red;
    Color textColor = isSwitched ? Colors.white : AppColor.blackColor;

    return Container(
      width: 91, // Width of the outer container for the switch
      height: 30, // Height of the outer container for the switch
      decoration: BoxDecoration(
        color:
            backgroundColor, // Background color changes based on the switch state
        borderRadius:
            BorderRadius.circular(20), // Border radius as per your spec
      ),
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeIn,
            left: isSwitched ? 41 : 10, // Move text based on the switch state
            right: isSwitched ? 10 : 41,
            child: InkWell(
              onTap: toggleSwitch,
              child: Container(
                width: 30,
                height: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: backgroundColor,
                ),
                child: Center(
                  child: Text(
                    isSwitched ? 'open' : 'close',
                    style: TextStyle(
                        color: textColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void toggleSwitch() {
    setState(() {
      isSwitched = !isSwitched;
    });
  }
}
