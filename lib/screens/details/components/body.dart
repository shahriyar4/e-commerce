import 'package:ecommerce_app/app/components/size_config.dart';
import 'package:ecommerce_app/models/product.dart';
import 'package:ecommerce_app/screens/cart/cart_screen.dart';
import 'package:ecommerce_app/screens/components/custom_button.dart';
import 'package:flutter/material.dart';
import '../top_rounded_container.dart';
import 'color_dots.dart';
import 'product_description.dart';
import 'product_images.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressSeeMore: () {},
              ),
              TopRoundedContainer(
                color: Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    ColorDots(product: product),
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth! * 0.15,
                          right: SizeConfig.screenWidth! * 0.15,
                          top: getProportionateScreenWidth(15),
                          bottom: getProportionateScreenWidth(40),
                        ),
                        child: DefaultButton(
                          press: () {},
                          text: "Add to Cart",
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
