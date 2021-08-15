import 'package:ecommerce_app/screens/cart/cart_screen.dart';
import 'package:ecommerce_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:ecommerce_app/screens/details/details_screen.dart';
import 'package:ecommerce_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:ecommerce_app/screens/home/home_screen.dart';
import 'package:ecommerce_app/screens/login_success/login_success_screen.dart';
import 'package:ecommerce_app/screens/otp/otp_screen.dart';
import 'package:ecommerce_app/screens/profile/profile_screen.dart';
import 'package:ecommerce_app/screens/sign_in/sign_in_screen.dart';
import 'package:ecommerce_app/screens/sign_up/sign_up_screen.dart';
import 'package:ecommerce_app/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OTPScreen.routeName: (context) => OTPScreen(),
  HomePageScreen.routeName: (context) => HomePageScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreenPage.routeName: (context) => CartScreenPage(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
