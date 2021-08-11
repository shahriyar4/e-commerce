
import 'package:ecommerce_app/app/components/constrants.dart';
import 'package:ecommerce_app/app/components/size_config.dart';
import 'package:ecommerce_app/screens/components/custom_button.dart';
import 'package:ecommerce_app/screens/otp/otp_screen.dart';
import 'package:ecommerce_app/screens/sign_in/components/custom_suffix_icon.dart';
import 'package:ecommerce_app/screens/sign_in/components/form_error.dart';
import 'package:flutter/material.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({Key? key}) : super(key: key);

  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  String? firstName;
  String? lastName;
  String? address;
  String? phoneNumber;
  final List<String> errors = [];

  


  void addError({required String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({required String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildFirstNameTextFormField(),
          SizedBox(height: getProportionateScreenWidth(20)),
          buildLastNameTextFormField(),
          SizedBox(height: getProportionateScreenWidth(20)),
          buildPhoneNumberTextFoemField(),
          SizedBox(height: getProportionateScreenWidth(20)),
          buildAddressTextFormField(),
          SizedBox(height: getProportionateScreenWidth(20)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenWidth(30)),
          DefaultButton(
              text: "Continue",
              press: () {
                if (_formKey.currentState!.validate()) {
                  // navigator OTP screen
                Navigator.pushNamed(context, OTPScreen.routeName);
                }
              })
        ],
      ),
    );
  }

  TextFormField buildAddressTextFormField() {
    return TextFormField(
      onSaved: (newValue) => address = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          //removeError(error: kAddressNullError);
          setState(() {
        errors.remove(kAddressNullError);
      });
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kAddressNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Address",
        hintText: "Enter your Address",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Location point.svg",
        ),
      ),
    );
  }

  TextFormField buildPhoneNumberTextFoemField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => phoneNumber = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPhoneNumberNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Phone Number",
        hintText: "Enter your phone number",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Phone.svg",
        ),
      ),
    );
  }

  TextFormField buildLastNameTextFormField() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue,
      decoration: InputDecoration(
        labelText: "Last Name",
        hintText: "Enter your last name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/User.svg",
        ),
      ),
    );
  }

  TextFormField buildFirstNameTextFormField() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNamelNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kNamelNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "First Name",
        hintText: "Enter your first name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/User.svg",
        ),
      ),
    );
  }
}
