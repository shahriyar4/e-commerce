import 'package:flutter/material.dart';

import 'components/body.dart';


class HomePageScreen extends StatelessWidget {
  const HomePageScreen({ Key? key }) : super(key: key);

  static String routeName = '/home_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body: Body(),
      
    );
  }
}