import 'package:ecommerce_app/app/components/size_config.dart';
import 'package:flutter/material.dart';

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    Key? key,
    required this.iconData,
    required this.press,
  }) : super(key: key);

  final IconData iconData;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      child: TextButton(
        onPressed: press,
        style: TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            shadowColor: Colors.white),
        child: Icon(
          iconData,
          color: Colors.black,
        ),
      ),
    );
  }
}
