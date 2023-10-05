import 'package:cheif_app/features/auth/presentation/screens/change_lang.dart';
import 'package:cheif_app/features/auth/presentation/screens/login.dart';
import 'package:cheif_app/features/auth/presentation/screens/reset_password.dart';
import 'package:cheif_app/features/auth/presentation/screens/send_code.dart';
import 'package:cheif_app/features/auth/presentation/screens/splash_screen.dart';
import 'package:cheif_app/features/menu/presentation/screens/add_meal.dart';
import 'package:cheif_app/features/menu/presentation/screens/menu_Home.dart';
import 'package:cheif_app/features/profile/presentation/screens/change_password.dart';
import 'package:cheif_app/features/profile/presentation/screens/profile_home.dart';
import 'package:cheif_app/features/profile/presentation/screens/setting_screen.dart';
import 'package:cheif_app/features/profile/presentation/screens/update_profile.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String intialRoute = '/';
  static const String sendCode = '/sendCode';
  static const String login = '/login';
  static const String resetpass = '/resetpass';
  static const String changelan = '/changelan';
  static const String addmeal = '/addmeal';
  static const String minuhome = '/minuhome';
  static const String profilehome = '/profilehome';
  static const String changepassword = '/changepassword';
  static const String setting = '/setting';
  static const String updateprofile = '/updateprofile';
}

class AppRotes {
 static Route? generateRoutes(RouteSettings routsettings) {
    switch (routsettings.name) {
      case Routes.intialRoute:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.sendCode:
        return MaterialPageRoute(builder: (_) => const SendCode());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.resetpass:
        return MaterialPageRoute(builder: (_) => const ResetPassword());
      case Routes.changelan:
        return MaterialPageRoute(builder: (_) => const CangeLangScreen());
      case Routes.addmeal:
        return MaterialPageRoute(builder: (_) => const AddMealScreen());
      case Routes.minuhome:
        return MaterialPageRoute(builder: (_) => const MenuHomeScreen());
      case Routes.profilehome:
        return MaterialPageRoute(builder: (_) => const ProfileHome());
      case Routes.changepassword:
        return MaterialPageRoute(builder: (_) => const ChangePassword());
      case Routes.setting:
        return MaterialPageRoute(builder: (_) => const SettingScreen());
      case Routes.updateprofile:
        return MaterialPageRoute(builder: (_) => const UpdateProfile());
        default:return MaterialPageRoute(builder: (_) => const Scaffold(
          body: Center(child: Text('No Found Route'),),
        ));
    }
  }
}
