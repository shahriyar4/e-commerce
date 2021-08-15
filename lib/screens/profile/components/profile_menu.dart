
import 'package:ecommerce_app/app/components/constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String text, icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: Color(0xfff5f6f9),
        ),
        onPressed: press,
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              icon,
              width: 22,
              color: kPrimaryColor,
            ),
            const SizedBox(width: 25),
            Expanded(
              child: Text(
                text,
                style: TextStyle(color: kTextColor, fontSize: 18),
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward,
              size: 23,
              color: kTextColor,
            )
          ],
        ),
      ),
    );
  }
}
