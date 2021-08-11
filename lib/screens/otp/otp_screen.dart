import 'package:ecommerce_app/screens/otp/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({ Key? key }) : super(key: key);
   static String routeName = '/Otp_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("OTP Verification"),
      centerTitle: true,),
      body: Body(),
    );
  }
}