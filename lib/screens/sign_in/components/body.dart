import 'package:ecommerce_app/constrants.dart';
import 'package:ecommerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'sign_form.dart';
import 'social_cards.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(18)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.02,
                ),
                Text(
                  "Welcome Back!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(20),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign In with your e-mail and password \nor continue with social media.",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.06,
                ),
                SignForm(),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.06,
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
                  height: getProportionateScreenHeight(18),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(14),
                      ),
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(14),
                        color: kPrimaryColor,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
