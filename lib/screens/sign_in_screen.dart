import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:odc_learning_app/screens/forget_password_screen.dart';
import 'package:odc_learning_app/screens/sign_up_screen.dart';
import 'package:odc_learning_app/widgets/orange_logo_widget.dart';

import '../constraints.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_form_field_widget.dart';
import '../widgets/orange_box.dart';
import 'home_screen.dart';

class SignInWidget extends StatelessWidget {
  static const routeName = '/sign-in';

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
                    OrangeLogoWidget(
                      height: 45,
                      width: 45,
                      rowAlignment: MainAxisAlignment.start,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        Text(
                          'Welcome ',
                          style: Constraint.headerStyle,
                        ),
                        Text(
                          'Back!',
                          style: Constraint.headerOrangeStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Login',
                      style: Constraint.subTitleStyle,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomFormFieldWidget(
                      text: 'E-mail',
                      textFormBGColor: Constraint.txfrmdcolor,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CustomFormFieldWidget(
                      textFormBGColor: Constraint.txfrmdcolor,
                      text: 'Password',
                      fontAwesomeSuffixIcon: FontAwesomeIcons.eyeSlash,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.of(context)
                                .pushNamed(ForgetPasswordScreen.routeName),
                          child: Text(
                            'Forget Password?',
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
                    SizedBox(
                      height: 80,
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
                          text: 'Login',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don’t Have an Account? ',
                            style: Constraint.textBlackStyle),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.of(context)
                              .pushNamed(SignUpWidget.routeName),
                          child: Text(
                            'Sign Up',
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
