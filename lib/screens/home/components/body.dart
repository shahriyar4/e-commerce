import 'package:ecommerce_app/app/components/size_config.dart';
import 'package:flutter/material.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_card.dart';
import 'scpecial_offers.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(15)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(20)),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenWidth(20)),
            Categories(),
            SizedBox(height: getProportionateScreenWidth(20)),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(20)),
            PopularCard(),
            SizedBox(height: getProportionateScreenWidth(20)),
          ],
        ),
      ),
    );
  }
}
