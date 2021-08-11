import 'package:ecommerce_app/app/components/constrants.dart';
import 'package:ecommerce_app/app/components/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';




class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key? key,
    required this.svgSrc,
    required this.numOfitem,
    required this.press,
  }) : super(key: key);

  final String svgSrc;
  final int numOfitem;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            height: getProportionateScreenWidth(46),
            width: getProportionateScreenWidth(46),
            decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(0.1),
                shape: BoxShape.circle),
            child: SvgPicture.asset(svgSrc),
          ),
          if(numOfitem !=0)
          Positioned(
            right: 0,
            top: -3,
            child: Container(
              height: getProportionateScreenWidth(16),
              width: getProportionateScreenWidth(16),
              decoration: BoxDecoration(
                color: Color(0xffff4848),
                shape: BoxShape.circle,
                border: Border.all(
                  width: 1.5,
                  color: Colors.white,
                ),
              ),
              child: Center(
                child: Text(
                  "$numOfitem",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(10),
                    height: 1,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
