import 'package:ecommerce_app/app/components/size_config.dart';
import 'package:ecommerce_app/screens/components/body.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String routeName = '/spllash';
  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
