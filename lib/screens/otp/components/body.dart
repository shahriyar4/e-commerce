import 'package:clock/clock.dart';
import 'package:ecommerce_app/app/components/constrants.dart';
import 'package:ecommerce_app/app/components/size_config.dart';
import 'package:ecommerce_app/screens/components/custom_button.dart';
import 'package:flutter/material.dart';

import 'otp_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.screenHeight! * 0.05,
            ),
            Text(
              "Complete Profile",
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  height: 1.5),
            ),
            Text("We sent your code to +99470 884 ** **"),
            buildTimer(),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.15,
            ),
            OTPForm(),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.1,
            ),
            GestureDetector(
              onTap: (){},
              child: Text(
                "resend OTP code",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code well expired in "),
        TweenAnimationBuilder(
          tween: IntTween(begin: 30, end: 0),
          duration: Duration(seconds: 30),
          builder: (context, int value, child) => Text(
            "00:${value.toInt()}",
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(fontWeight: FontWeight.normal, color: kPrimaryColor),
          ),
          onEnd: () {},
        ),
      ],
    );
  }
}
