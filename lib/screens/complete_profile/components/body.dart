import 'package:ecommerce_app/app/components/size_config.dart';
import 'package:flutter/material.dart';
import 'complete_profile_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Complete Profile",
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
              SizedBox(height: SizeConfig.screenHeight! * 0.05),
              CompleteProfileForm(),
              SizedBox(
                height: getProportionateScreenWidth(30),
              ),
              Text(
                "By continuing you confirm that you agree \nwith our Team and Condition",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
