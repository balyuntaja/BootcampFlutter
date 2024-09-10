import 'package:get/get.dart';
import 'package:sanberappflutter/auth/pages/login_page.dart';
import 'package:sanberappflutter/auth/pages/register_page.dart';
import 'package:sanberappflutter/pages/get_started_page.dart';
import 'package:sanberappflutter/pages/home/home_page.dart';
import 'package:sanberappflutter/routes/app_routes_named.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: AppRoutesNamed.getStartedPage, page: () => GetStartedPage()),
    GetPage(name: AppRoutesNamed.loginPage, page: () => LoginPage()),
    GetPage(name: AppRoutesNamed.registerPage, page: () => RegisterPage()),
    GetPage(name: AppRoutesNamed.homePage, page: () => HomePage()),
  ];
}
