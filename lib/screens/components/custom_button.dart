
import 'package:ecommerce_app/app/components/constrants.dart';
import 'package:ecommerce_app/app/components/size_config.dart';
import 'package:flutter/material.dart';
class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.text, required this.press,
  }) : super(key: key);
  final String text;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: TextButton(
        autofocus: true,
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
         // primary: kPrimaryColor,
          backgroundColor: kPrimaryColor
        ),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
              fontSize: getProportionateScreenWidth(18), color: Colors.white),
        ),
      ),
    );
  }
}