import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:vehical_management/routes/app_pages.dart';
import 'package:vehical_management/ui/add_driver/add_driver_page.dart';
import 'package:vehical_management/ui/add_vogn/view.dart';
import 'package:vehical_management/ui/auth/loginscreen/login_screen2.dart';
import 'package:vehical_management/ui/auth/signupScreen/signup_screen.dart';
import 'package:vehical_management/ui/home/home.dart';
import 'package:vehical_management/ui/onbordingScreen/onbording_main_screen.dart';
import 'package:vehical_management/ui/package_selection/package_selection.dart';
import 'package:vehical_management/ui/splashScreen/splash_screen.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
        name: Paths.splash_screen,
        page: () => SplashScreen(),
        transition: Transition.fadeIn
        // binding: FindTutorsBinding(),
        ),
    GetPage(
        name: Paths.OnbordingMainScreen,
        page: () => OnbordingMainScreen(),
        transition: Transition.fadeIn
        // binding: FindTutorsBinding(),
        ),
    GetPage(
        name: Paths.LoginScreen2,
        page: () => LoginScreen2(),
        transition: Transition.fadeIn
        // binding: FindTutorsBinding(),
        ),
    GetPage(
        name: Paths.SignupScreen,
        page: () => SignupScreen(),
        transition: Transition.fadeIn
        // binding: FindTutorsBinding(),
        ),
    GetPage(
        name: Paths.SelectPackage,
        page: () => SelectPackage(),
        transition: Transition.fadeIn
        // binding: FindTutorsBinding(),
        ),
    GetPage(
        name: Paths.AddVognPage,
        page: () => AddVognPage(),
        transition: Transition.fadeIn
        // binding: FindTutorsBinding(),
        ),
    GetPage(
        name: Paths.AddDriverPage,
        page: () => AddDriverPage(),
        transition: Transition.fadeIn
        // binding: FindTutorsBinding(),
        ),
    GetPage(
        name: Paths.HomePage,
        page: () => HomeScreen(),
        transition: Transition.fadeIn
        // binding: FindTutorsBinding(),
        ),
  ];
}
