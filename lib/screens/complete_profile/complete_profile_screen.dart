import 'package:ecommerce_app/screens/complete_profile/components/body.dart';
import 'package:flutter/material.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({ Key? key }) : super(key: key);
static String routeName = '/complete_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up"),),
      body: Body(),
    );
  }
}