// ignore_for_file: use_build_context_synchronously

import 'package:emos_vendor/GlobalColors/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../components/RoundedButton/rounded_button.dart';
import '../../../components/VerticalSpacing/vertical_spacing.dart';
import '../../../components/appBarField/appBar_field.dart';
import '../../../components/coustem_text_field/coustem_text_field.dart';
import '../../../components/loading_manager.dart';
import '../../../routes/routes_name.dart';
import '../../../utils/utils.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  TextEditingController emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  final FirebaseAuth authInstance = FirebaseAuth.instance;
  bool _isLoading = false;
  void _forgetPassFCT() async {
    if (emailController.text.isEmpty || !emailController.text.contains("@")) {
      Utils.flushBarErrorMessage(
          'Please enter a correct email address', context);
    } else {
      setState(() {
        _isLoading = true;
      });
      try {
        await authInstance.sendPasswordResetEmail(
            email: emailController.text.toLowerCase());

        Utils.toastMessage('An email has been sent to your email address');
        Navigator.pushNamed(context, RouteName.loginView);
      } on FirebaseException catch (error) {
        Utils.flushBarErrorMessage('${error.message}', context);

        setState(() {
          _isLoading = false;
        });
      } catch (error) {
        Utils.flushBarErrorMessage('$error', context);
        setState(() {
          _isLoading = false;
        });
      } finally {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgFillColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50.0),
          ),
        ),
        child: LoadingManager(
          isLoading: _isLoading,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const VerticalSpeacing(30.0),
                AppBarField(
                  ontap: () {
                    Navigator.pop(context);
                  },
                ),
                const VerticalSpeacing(32.0),
                Text(
                  "Forgot password!",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
                // const VerticalSpeacing(5.0),
                Text(
                  "Enter your email addreess then we will send you a code to reset your password",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColor.textColor2,
                    ),
                  ),
                ),
                const VerticalSpeacing(40.0),
                TextFieldCustom(
                  controller: emailController,
                  enablePrefixIcon: true,
                  maxLines: 1,
                  icon: Icons.email,
                  hintText: "Example@gmail.com",
                ),
                const VerticalSpeacing(
                  16,
                ),

                RoundedButton(
                  title: 'Send',
                  onpress: () {
                    _forgetPassFCT();
                  },
                  bgColor: AppColor.simpleBgbuttonColor,
                  titleColor: AppColor.simpleBgTextColor,
                ),
                const VerticalSpeacing(20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
