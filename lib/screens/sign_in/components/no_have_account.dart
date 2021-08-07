import 'package:ecommerce_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:flutter/material.dart';

import '../../../constrants.dart';
import '../../../size_config.dart';

class NoHaveAccount extends StatelessWidget {
  const NoHaveAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(14),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            "Sign Up",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(14),
              color: kPrimaryColor,
            ),
          ),
        )
      ],
    );
  }
}
