import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:odc_learning_app/screens/home_screen.dart';
import 'package:odc_learning_app/screens/privacy_policy_screen.dart';
import 'package:odc_learning_app/screens/sign_in_screen.dart';
import 'package:odc_learning_app/widgets/custom_button.dart';
import 'package:odc_learning_app/widgets/custom_form_field_widget.dart';
import 'dart:math';

import 'package:odc_learning_app/widgets/orange_box.dart';

import '../constraints.dart';

class SignUpWidget extends StatelessWidget {
  static const routeName = '/sign-up';

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        height: mediaQuery.size.height,
        width: mediaQuery.size.width,
        color: const Color(0xffffffff),
        //color: Colors.amber,
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: -30,
                right: -50,
                child: Transform.rotate(
                  angle: -1 / 8,
                  child: OrangeBox(
                    color: Constraint.primaryColor,
                  ),
                ),
              ),
              Positioned(
                top: -15,
                right: -60,
                child: Transform.rotate(
                  angle: -1 / 8,
                  child: OrangeBox(color: Color(0x3EFF8330)),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                height: mediaQuery.size.height,
                width: mediaQuery.size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Hello, ',
                          style: Constraint.headerStyle,
                        ),
                        Text(
                          'Friend!',
                          style: Constraint.headerOrangeStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Sign Up',
                      style: Constraint.subTitleStyle,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomFormFieldWidget(
                      fontAwesomePrefixIcon: FontAwesomeIcons.user,
                      text: 'Full Name',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomFormFieldWidget(
                      fontAwesomePrefixIcon: FontAwesomeIcons.envelope,
                      text: 'E-mail',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomFormFieldWidget(
                      fontAwesomePrefixIcon: FontAwesomeIcons.lock,
                      text: 'Password',
                      fontAwesomeSuffixIcon: FontAwesomeIcons.eyeSlash,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomFormFieldWidget(
                      fontAwesomePrefixIcon: FontAwesomeIcons.phone,
                      text: 'Phone number',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomFormFieldWidget(
                      fontAwesomePrefixIcon: FontAwesomeIcons.locationDot,
                      text: 'Address',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {},
                          checkColor: Constraint.txfrmdcolor,
                          activeColor: Constraint.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        Text(
                          'Do you agree to our ',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Constraint.textBLColor),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.of(context)
                              .pushNamed(PrivacyPolicyScreen.routeName),
                          child: Text(
                            'Privacy Policy',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Constraint.primaryColor,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          width: mediaQuery.size.width - 90,
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(HomeScreen.routeName);
                          },
                          text: 'Sign Up',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text('Already Have an Account? ',
                            style: Constraint.textBlackStyle),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.of(context)
                                .pushNamed(SignInWidget.routeName)
                          ,
                          child: Text(
                            'Login',
                            style: Constraint.textOrangeStyle,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 60,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: -30,
                left: -50,
                child: Transform.rotate(
                  angle: -1 / 8,
                  child: OrangeBox(
                    color: Constraint.primaryColor,
                  ),
                ),
              ),
              Positioned(
                bottom: -15,
                left: -60,
                child: Transform.rotate(
                  angle: -1 / 8,
                  child: OrangeBox(color: Color(0x3EFF8330)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
