
import 'package:ecommerce_app/app/components/constrants.dart';
import 'package:ecommerce_app/app/components/size_config.dart';
import 'package:ecommerce_app/screens/components/custom_button.dart';
import 'package:flutter/material.dart';

class OTPForm extends StatefulWidget {
  const OTPForm({Key? key}) : super(key: key);

  @override
  _OTPFormState createState() => _OTPFormState();
}

class _OTPFormState extends State<OTPForm> {
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
  }

  void nextField(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  autofocus: true,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.phone,
                  obscureText: true,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    nextField(value, pin2FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin2FocusNode,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.phone,
                  obscureText: true,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    nextField(value, pin3FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin3FocusNode,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.phone,
                  obscureText: true,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    nextField(value, pin4FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin4FocusNode,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.phone,
                  obscureText: true,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    if (value.length == 1) {
                      pin4FocusNode.unfocus();
                    }
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.15,
          ),
          DefaultButton(text: "Continue", press: () {})
        ],
      ),
    );
  }
}
