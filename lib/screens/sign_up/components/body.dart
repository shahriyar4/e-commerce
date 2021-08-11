import 'package:ecommerce_app/app/components/size_config.dart';
import 'package:ecommerce_app/screens/sign_in/components/social_cards.dart';
import 'package:flutter/material.dart';

import 'sign_up_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.screenHeight! * 0.02,
            ),
            Text(
              "Register account",
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  height: 1.5),
            ),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.03,
            ),
            Text(
              "Complete your details or continue \nwith social media",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.07,
            ),
            SignUpForm(),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.07,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialCard(
                  icon: "assets/icons/google-icon.svg",
                  press: () {},
                ),
                SocialCard(
                  icon: "assets/icons/facebook-2.svg",
                  press: () {},
                ),
                SocialCard(
                  icon: "assets/icons/twitter.svg",
                  press: () {},
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Text(
              "By continuing you confirm that you agree \nwith our Team and Condition",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
