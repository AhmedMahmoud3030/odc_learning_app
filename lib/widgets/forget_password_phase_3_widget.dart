import 'package:flutter/material.dart';

import '../constraints.dart';
import 'custom_button.dart';
import 'custom_form_field_widget.dart';

class ForgetPasswordPhase3Widget extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    MediaQueryData mediaQuery = MediaQuery.of(context);

    return SingleChildScrollView(
      child: Container(
        color: const Color(0xffffffff),
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.only(right: 50, left: 50, bottom: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                'assets/images/forget_password_3.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Enter your new password',
              style: Constraint.textBlacklStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            CustomFormFieldWidget(
              text: 'New Password',
              textFormBGColor: Constraint.txfrmdcolor,
            ),
            SizedBox(
              height: 40,
            ),
            
            CustomFormFieldWidget(
              text: 'Confirm Password',
              textFormBGColor: Constraint.txfrmdcolor,
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  width: mediaQuery.size.width - 100,
                  onTap: () {},
                  text: 'Submit',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}