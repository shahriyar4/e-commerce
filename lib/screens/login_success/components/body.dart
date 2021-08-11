import 'package:ecommerce_app/app/components/size_config.dart';
import 'package:ecommerce_app/screens/components/custom_button.dart';
import 'package:ecommerce_app/screens/home/home_screen.dart';
import 'package:ecommerce_app/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenHeight! * 0.04,
        ),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight! * 0.5,
        ),
        SizedBox(
          height: SizeConfig.screenHeight! * 0.08,
        ),
        Text(
          "Login Succes",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth! * 0.6,
          child: DefaultButton(
            text: "Back to Home",
            press: () => Navigator.pushNamed(context, HomePageScreen.routeName),
          ),
        ),
        Spacer(),
      ],
    );
  }
}
