// ignore_for_file: use_build_context_synchronously

import 'package:emos_vendor/View/AuthScreens/LoginVIew/widgets/google_login.dart';
import 'package:firebase_auth/firebase_auth.dart';
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

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final FirebaseAuth authInstance = FirebaseAuth.instance;

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  bool _isLoading = false;
  void _submitFormOnLogin() async {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      _formKey.currentState!.save();
      setState(() {
        _isLoading = true;
      });
      try {
        await authInstance.signInWithEmailAndPassword(
            email: emailController.text.toLowerCase().trim(),
            password: passwordController.text.trim());
        Utils.toastMessage('SuccessFully Login');
        Navigator.pushNamed(context, RouteName.homeScreen);
      } on FirebaseException catch (e) {
        Utils.flushBarErrorMessage('NetWork Error $e', context);
        setState(() {
          _isLoading = false;
        });
      } catch (e) {
        Utils.flushBarErrorMessage('SignUp Fail', context);
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
                      "Hello!",
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
                      "Insert your email and password to login",
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
                      icon: Icons.mail,
                      hintText: 'Enter your email...',
                    ),
                    const VerticalSpeacing(32.0),
                    TextFieldCustom(
                      controller: passwordController,
                      enablePrefixIcon: true,
                      maxLines: 1,
                      icon: Icons.lock_outline,
                      hintText: 'Enter your password...',
                    ),
                    const VerticalSpeacing(5.0),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            RouteName.forgetPassword,
                          );
                        },
                        child: Text(
                          "Forget Password?",
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
                    ),
                    const VerticalSpeacing(20.0),
                    RoundedButton(
                      title: 'Login',
                      onpress: () {
                        _submitFormOnLogin();
                      },
                      bgColor: AppColor.simpleBgbuttonColor,
                      titleColor: AppColor.simpleBgTextColor,
                    ),
                    const VerticalSpeacing(20.0),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Or, login with",
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
                    const VerticalSpeacing(16.0),
                    const GoogleAccount(img: 'images/google.png'),
                    Align(
                        alignment: Alignment.center,
                        child: RichText(
                          text: TextSpan(
                            text: "Don't have an account?  ",
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
                                          context, RouteName.registerView);
                                    },
                                    child: Text(
                                      'Register',
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
                        )),
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
