import 'package:ecommerce_app/app/components/custom_bottom_nav_bar.dart';
import 'package:ecommerce_app/app/components/enums.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  static String routeName = '/home_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.home,
      ),
      body: Body(),
    );
  }
}
