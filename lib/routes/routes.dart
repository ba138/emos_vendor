import 'package:emos_vendor/View/Hospital/Add_hospital.dart';
import 'package:emos_vendor/View/Hospital/hospital_home.dart';
import 'package:emos_vendor/View/AuthScreens/ForgetPasswordView/forget_password_screen.dart';
import 'package:emos_vendor/View/AuthScreens/LoginVIew/login_view.dart';
import 'package:emos_vendor/View/AuthScreens/RegisterView/register_view.dart';
import 'package:emos_vendor/View/addAmbulance/add_ambulance.dart';
import 'package:emos_vendor/View/addClinic/add_clinic.dart';
import 'package:emos_vendor/View/addDoctorAtHome/add_doctor_at_home.dart';
import 'package:emos_vendor/View/addLaboratory/add_laboratory.dart';
import 'package:emos_vendor/View/addRadiology/add_radiology.dart';
import 'package:emos_vendor/View/home/home_screen.dart';
import 'package:emos_vendor/routes/routes_name.dart';
import 'package:flutter/material.dart';

import '../View/OnBoardingScreens/onBoarding1.dart';
import '../View/OnBoardingScreens/onBoarding2.dart';
import '../View/OnBoardingScreens/onBoarding3.dart';
import '../View/OnBoardingScreens/splash_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splashScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SplashScreen(),
        );
      case RouteName.onBoarding1:
        return MaterialPageRoute(
          builder: (BuildContext context) => const OnBoardingScreen1(),
        );
      case RouteName.onBoarding2:
        return MaterialPageRoute(
          builder: (BuildContext context) => const OnBoardingScreen2(),
        );
      case RouteName.onBoarding3:
        return MaterialPageRoute(
          builder: (BuildContext context) => const OnBoardingScreen3(),
        );
      case RouteName.forgetPassword:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ForgetPasswordScreen(),
        );
      case RouteName.loginView:
        return MaterialPageRoute(
          builder: (BuildContext context) => const LoginView(),
        );
      case RouteName.registerView:
        return MaterialPageRoute(
          builder: (BuildContext context) => const RegisterView(),
        );
      case RouteName.homeScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const HomeScreen(),
        );
      case RouteName.addHospital:
        return MaterialPageRoute(
          builder: (BuildContext context) => const AddHospital(),
        );
      case RouteName.addClinic:
        return MaterialPageRoute(
          builder: (BuildContext context) => const AddClinic(),
        );
      case RouteName.addAmbulance:
        return MaterialPageRoute(
          builder: (BuildContext context) => const AddAmbulance(),
        );
      case RouteName.addDrAtHome:
        return MaterialPageRoute(
          builder: (BuildContext context) => const AddDctorAtHome(),
        );
      case RouteName.addLaboratory:
        return MaterialPageRoute(
          builder: (BuildContext context) => const AddLaboratory(),
        );
      case RouteName.addRadiology:
        return MaterialPageRoute(
          builder: (BuildContext context) => const AddRadiology(),
        );
      case RouteName.hospitalHome:
        return MaterialPageRoute(
          builder: (BuildContext context) => const HospitalHome(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) {
            return const Scaffold(
              body: Center(
                child: Text('No routes define'),
              ),
            );
          },
        );
    }
  }
}
