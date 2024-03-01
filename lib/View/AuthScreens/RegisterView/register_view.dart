// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../GlobalColors/colors.dart';
import '../../../components/RoundedButton/rounded_button.dart';
import '../../../components/VerticalSpacing/vertical_spacing.dart';
import '../../../components/appBarField/appBar_field.dart';
import '../../../components/coustem_text_field/coustem_text_field.dart';
import '../../../components/loading_manager.dart';
import '../../../routes/routes_name.dart';
import '../../../utils/utils.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    emailController.dispose();
    phoneController.dispose();
  }

  final FirebaseAuth authInstance = FirebaseAuth.instance;

  bool _isLoading = false;
  void _submitFormOnRegister() async {
    // Form validation... (same as before)
    final isValid = _formKey.currentState!.validate();

    if (isValid) {
      setState(() {
        _isLoading = true;
      });
      _formKey.currentState!.save();
      if (passwordController.text != confirmPasswordController.text) {
        Utils.toastMessage('Passwords do not match');
        setState(() {
          _isLoading = false;
        });
        return;
      }
      try {
        await authInstance.createUserWithEmailAndPassword(
          email: emailController.text.toLowerCase().trim(),
          password: passwordController.text.trim(),
        );

        // Choose either Firestore or RTDB:
        final User? user = authInstance.currentUser;
        final uid = user!.uid;

        await FirebaseDatabase.instance.ref().child('users').child(uid).set({
          'id': uid,
          'email': emailController.text.toLowerCase(),
          'phone No': phoneController.text.toLowerCase(),
          'createdAt': ServerValue.timestamp, // Use server-side timestamp
        });

        Navigator.pushNamed(context, RouteName.homeScreen);
        Utils.toastMessage('Successfully Registered');
      } on FirebaseException catch (e) {
        Utils.flushBarErrorMessage('${e.message}', context);
      } catch (e) {
        Utils.flushBarErrorMessage('$e', context);
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
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const VerticalSpeacing(30.0),
                    AppBarField(
                      ontap: () {
                        {}
                      },
                    ),
                    const VerticalSpeacing(32.0),
                    Text(
                      "Register",
                      style: GoogleFonts.getFont(
                        "Roboto",
                        textStyle: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                          color: AppColor.textColor,
                        ),
                      ),
                    ),
                    Text(
                      "Register to continue",
                      style: GoogleFonts.getFont(
                        "Roboto",
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColor.textColor2,
                        ),
                      ),
                    ),
                    const VerticalSpeacing(10.0),
                    Container(
                      height: 72.0,
                      width: 72.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(36.0),
                        color: AppColor.circularAvatarColor,
                      ),
                      child: Center(
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.camera_alt_outlined,
                              color: AppColor.bgFillColor,
                            )),
                      ),
                    ),
                    const VerticalSpeacing(20.0),
                    TextFieldCustom(
                      controller: emailController,
                      enablePrefixIcon: true,
                      maxLines: 1,
                      icon: Icons.mail,
                      hintText: 'Enter your email...',
                    ),
                    const VerticalSpeacing(32.0),
                    TextFieldCustom(
                      controller: passwordController,
                      enablePrefixIcon: true,
                      maxLines: 1,
                      icon: Icons.lock_outline,
                      enableSuffixIcon: true,
                      suffixIcon: Icons.remove_red_eye_outlined,
                      hintText: 'Enter your password...',
                    ),
                    const VerticalSpeacing(32.0),
                    TextFieldCustom(
                      controller: confirmPasswordController,
                      enablePrefixIcon: true,
                      maxLines: 1,
                      icon: Icons.lock_outline,
                      hintText: 'Renter your password...',
                    ),
                    const VerticalSpeacing(32.0),
                    TextFieldCustom(
                      controller: phoneController,
                      enablePrefixIcon: true,
                      maxLines: 1,
                      icon: Icons.phone_outlined,
                      hintText: 'Enter your phone number...',
                    ),
                    const VerticalSpeacing(32.0),
                    RoundedButton(
                      title: 'Register',
                      onpress: () {
                        _submitFormOnRegister();
                      },
                      bgColor: AppColor.simpleBgbuttonColor,
                      titleColor: AppColor.simpleBgTextColor,
                    ),
                    const VerticalSpeacing(20.0),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Or, register with",
                        style: GoogleFonts.getFont(
                          "Roboto",
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColor.textColor2,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                          text: "Already have account?  ",
                          style: GoogleFonts.getFont(
                            "Roboto",
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColor.textColor2,
                            ),
                          ),
                          children: [
                            WidgetSpan(
                              child: Container(
                                padding: const EdgeInsets.only(bottom: 2.0),
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: AppColor.simpleBgbuttonColor,
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, RouteName.loginView);
                                  },
                                  child: Text(
                                    'Login',
                                    style: GoogleFonts.getFont(
                                      "Roboto",
                                      textStyle: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w800,
                                        color: AppColor.simpleBgbuttonColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
