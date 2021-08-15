import 'package:ecommerce_app/app/components/size_config.dart';
import 'package:ecommerce_app/models/product.dart';
import 'package:ecommerce_app/screens/details/details_screen.dart';
import 'package:flutter/material.dart';

import 'products_card.dart';
import 'section_title.dart';

class PopularCard extends StatelessWidget {
  const PopularCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Popular Product",
          press: () {},
        ),
        SizedBox(height: getProportionateScreenWidth(15)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                  demoProducts.length,
                  (index) => ProductCard(
                        product: demoProducts[index],
                        press: () => Navigator.pushNamed(
                          context,
                          DetailsScreen.routeName,
                          arguments: ProductDetailsArguments(
                              product: demoProducts[index]),
                        ),
                      )),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}
