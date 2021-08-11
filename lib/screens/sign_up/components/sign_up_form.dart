import 'package:ecommerce_app/app/components/constrants.dart';
import 'package:ecommerce_app/app/components/size_config.dart';
import 'package:ecommerce_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:ecommerce_app/screens/components/custom_button.dart';
import 'package:ecommerce_app/screens/sign_in/components/custom_suffix_icon.dart';
import 'package:ecommerce_app/screens/sign_in/components/form_error.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? confirmPassword;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            buildPasswordFormField(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            buildConfirmPasswordFormField(),
            FormError(errors: errors),
            SizedBox(
              height: getProportionateScreenHeight(40),
            ),
            DefaultButton(
                text: "Continue",
                press: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushNamed(
                        context, CompleteProfileScreen.routeName);
                  }
                })
          ],
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
        password = value;
        return null;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return "";
        }
        return null;
      },
      onSaved: (newValue) => email = newValue,
      decoration: InputDecoration(
        labelText: "E-Mail",
        hintText: "Enter your e-mail",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Mail.svg",
        ),
      ),
    );
  }

  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => confirmPassword = newValue,
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) {
        if (value.isNotEmpty) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (value.isNotEmpty && password == confirmPassword) {
          setState(() {
            errors.remove(kMatchPassError);
          });
        }
        confirmPassword = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          setState(() {
            errors.add(kPassNullError);
          });
          return "";
        } else if ((password != value)) {
          setState(() {
            errors.add(kMatchPassError);
          });
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: " Confirm Password",
        hintText: "Re-enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Lock.svg",
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      keyboardType: TextInputType.emailAddress,
       onChanged: (value) {
        if (value.isNotEmpty) {
          setState(() {
            errors.remove(kPassNullError);
          });
          
        } else if (value.length >= 8) {
          setState(() {
            errors.remove(kShortPassError);
          });
        }
        password = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          setState(() {
            errors.add(kPassNullError);
          });
          return "";
        } else if (value.length < 8) {
          setState(() {
            errors.add(kShortPassError);
          });
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Lock.svg",
        ),
      ),
    );
  }
}
