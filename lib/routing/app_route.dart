import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../views/admin/admin_view.dart';
import '../views/home/home_view.dart';
import '../views/login/login_view.dart';
import '../views/splash/splash_view.dart';
import '../views/user/user_view.dart';

class AppRoute {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppConstant.splashView:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
        );

      case AppConstant.loginView:
        return MaterialPageRoute(
          builder: (context) => const LoginView(),
        );

      case AppConstant.homeView:
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
        );

      case AppConstant.userListView:
        return MaterialPageRoute(
          builder: (context) => const UserListView(),
        );

      case AppConstant.adminListView:
        return MaterialPageRoute(
          builder: (context) => const AdminListView(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
        );
    }
  }
}
