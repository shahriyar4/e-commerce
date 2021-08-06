import 'package:ecommerce_app/routs.dart';
import 'package:ecommerce_app/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

import 'screens/components/theme.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce Demo',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      //home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}


