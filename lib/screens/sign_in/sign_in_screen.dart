//import 'package:ecommerce_app/screens/components/body.dart';
import 'package:ecommerce_app/screens/sign_in/components/body.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);
  static String routeName = '/sign_in';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
