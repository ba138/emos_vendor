import 'package:emos_vendor/View/Ambulance/Ambulance_Profile/ambulance_detail_screen.dart';
import 'package:emos_vendor/View/Ambulance/Ambulance_Profile/ambulance_edit_detail_screen.dart';
import 'package:emos_vendor/View/Ambulance/Ambulance_Notification/total_rating_screen.dart';
import 'package:emos_vendor/View/Ambulance/Ambulance_Bottom_Navigation/ambulance_dashboard.dart';
import 'package:emos_vendor/View/Clinic/clinicChat/clinic_chat.dart';
import 'package:emos_vendor/View/Clinic/clinicHistory/clinic_history.dart';
import 'package:emos_vendor/View/Clinic/clinic_bottomNavigation/clinic_bottomnavigation.dart';
import 'package:emos_vendor/View/Clinic/clinic_home.dart';
import 'package:emos_vendor/View/Clinic/clinic_notifications/clinic_nofication.dart';
import 'package:emos_vendor/View/Clinic/clinic_profile/clinic_profile.dart';
import 'package:emos_vendor/View/DoctorAtHome/DoctorAtHomeDashboard/doctor_at_home_dashboard.dart';
import 'package:emos_vendor/View/DoctorAtHome/DoctorProfile/doctor_at_home_detail_screen.dart';
import 'package:emos_vendor/View/DoctorAtHome/DoctorProfile/doctor_at_home_details_edit_screen.dart';
import 'package:emos_vendor/View/Hospital/History/patient_history.dart';
import 'package:emos_vendor/View/Hospital/Add_hospital.dart';
import 'package:emos_vendor/View/Hospital/hospital_home.dart';
import 'package:emos_vendor/View/AuthScreens/ForgetPasswordView/forget_password_screen.dart';
import 'package:emos_vendor/View/AuthScreens/LoginVIew/login_view.dart';
import 'package:emos_vendor/View/AuthScreens/RegisterView/register_view.dart';
import 'package:emos_vendor/View/Ambulance/add_ambulance.dart';
import 'package:emos_vendor/View/Clinic/add_clinic.dart';
import 'package:emos_vendor/View/DoctorAtHome/add_doctor_at_home.dart';
import 'package:emos_vendor/View/Laboratory/add_laboratory.dart';
import 'package:emos_vendor/View/Laboratory/labotry_bottomNavigation/labotry_bottomBar.dart';
import 'package:emos_vendor/View/Laboratory/labotry_chat/labotry_chatScreen.dart';
import 'package:emos_vendor/View/Laboratory/labotry_history/labotry_history.dart';
import 'package:emos_vendor/View/Laboratory/labotry_home.dart';
import 'package:emos_vendor/View/Laboratory/labotry_notification/Labotry_notifications.dart';
import 'package:emos_vendor/View/Laboratory/labotry_profile/labotry_profile.dart';
import 'package:emos_vendor/View/Radiology/Radiology_bottomNavigation/radiology_bottomBar.dart';
import 'package:emos_vendor/View/Radiology/Radiology_chat/radiology_chatScreen.dart';
import 'package:emos_vendor/View/Radiology/Radiology_notification/Radiology_notifications.dart';
import 'package:emos_vendor/View/Radiology/add_radiology.dart';
import 'package:emos_vendor/View/Hospital/chat/chat_screen.dart';
import 'package:emos_vendor/View/Radiology/radiology_home.dart';
import 'package:emos_vendor/View/Radiology/radiology_profile/radiology_profile.dart';
import 'package:emos_vendor/View/home/home_screen.dart';
import 'package:emos_vendor/View/Hospital/notifications/notifications.dart';
import 'package:emos_vendor/View/Hospital/profile/profile.dart';
import 'package:emos_vendor/routes/routes_name.dart';
import 'package:flutter/material.dart';
import '../View/Clinic/clinic_notifications/clinic_total_rating.dart';
import '../View/Hospital/profile/widgets/hospital_total_rating.dart';
import '../View/Laboratory/labotry_profile/widgets/labotry_total_rating.dart';
import '../View/OnBoardingScreens/onBoarding1.dart';
import '../View/OnBoardingScreens/onBoarding2.dart';
import '../View/OnBoardingScreens/onBoarding3.dart';
import '../View/OnBoardingScreens/splash_screen.dart';
import '../View/Hospital/bottomNavigation/bottom_navigation.dart';
import '../View/Radiology/radiology_history/radio_history.dart';
import '../View/Radiology/radiology_profile/widgets/radiology_total_rating.dart';

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
      case RouteName.patientHistory:
        return MaterialPageRoute(
          builder: (BuildContext context) => const PatientHistory(),
        );
      case RouteName.bottomBar:
        return MaterialPageRoute(
          builder: (BuildContext context) => const BottomBar(),
        );
      case RouteName.chatScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ChatScreen(),
        );
      case RouteName.notificationScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const NotificationScreen(),
        );
      case RouteName.profileScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ProfileScreen(),
        );
      case RouteName.ambulancedashboard:
        return MaterialPageRoute(
          builder: (BuildContext context) => const AmbulanceDashboard(),
        );
      case RouteName.clinicBottomBar:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ClinicBottomBar(),
        );
      case RouteName.clinicChat:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ClinicChat(),
        );
      case RouteName.clinicHome:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ClinicHome(),
        );
      case RouteName.clinicNotificationScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ClinicNotificationScreen(),
        );
      case RouteName.clinicProfileScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ClinicProfileScreen(),
        );
      case RouteName.clinicHistory:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ClinicHistory(),
        );
      case RouteName.labotryBottomBar:
        return MaterialPageRoute(
          builder: (BuildContext context) => const LabotoryBottomBar(),
        );
      case RouteName.labotryChat:
        return MaterialPageRoute(
          builder: (BuildContext context) => const LabotryChatScreen(),
        );
      case RouteName.labotryHome:
        return MaterialPageRoute(
          builder: (BuildContext context) => const LabotryHome(),
        );
      case RouteName.labotryNotificationScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const LabotryNotificationScreen(),
        );
      case RouteName.labotryProfileScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const LabotryProfileScreen(),
        );
      case RouteName.labotryHistory:
        return MaterialPageRoute(
          builder: (BuildContext context) => const LabotryPatientHistory(),
        );

      case RouteName.ambulanceDetailEditScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const AmbulanceDetailEditScreen(),
        );
      case RouteName.ambulanceTotalReviewScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const AmbulanceTotalReview(),
        );

      case RouteName.radiologyBottomBar:
        return MaterialPageRoute(
          builder: (BuildContext context) => const RadiologyBottomBar(),
        );
      case RouteName.radiologyChat:
        return MaterialPageRoute(
          builder: (BuildContext context) => const RadiologyChatScreen(),
        );
      case RouteName.radiologyHome:
        return MaterialPageRoute(
          builder: (BuildContext context) => const RadiologyHome(),
        );
      case RouteName.radiologyNotificationScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) =>
              const RadiologyNotificationScreen(),
        );
      case RouteName.radiologyProfileScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const RadiologyProfileScreen(),
        );
      case RouteName.radiologyHistory:
        return MaterialPageRoute(
          builder: (BuildContext context) => const RadiologyPatientHistory(),
        );
      case RouteName.ambulanceDetailScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const AmbulanceDetailScreen(),
        );
      case RouteName.doctorathomedashboard:
        return MaterialPageRoute(
          builder: (BuildContext context) => const DoctorAtHomeDashboard(),
        );
      case RouteName.doctorathomeDetailscreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const DoctorAtHomeDetailView(),
        );
      case RouteName.doctorathomeDetaileditscreen:
        return MaterialPageRoute(
          builder: (BuildContext context) =>
              const DoctorAtHomeDetailEditScreen(),
        );
      case RouteName.clinicTotalRating:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ClinicTotalRating(),
        );
      case RouteName.hospitalTotalRating:
        return MaterialPageRoute(
          builder: (BuildContext context) => const HospitalTotalRating(),
        );
      case RouteName.labotryTotalRating:
        return MaterialPageRoute(
          builder: (BuildContext context) => const LabotryTotalRating(),
        );
      case RouteName.radiologyTotalRating:
        return MaterialPageRoute(
          builder: (BuildContext context) => const RadiologyTotalRating(),
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
