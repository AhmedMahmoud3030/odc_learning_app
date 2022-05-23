import 'package:flutter/material.dart';

import '../constraints.dart';
import 'custom_button.dart';
import 'custom_form_field_widget.dart';

class ForgetPasswordPhase2Widget extends StatelessWidget {
const ForgetPasswordPhase2Widget({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                'assets/images/forget_password_2.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'please enter the 4-digit code sent to ',
              style: Constraint.textBlacklStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'ahmedabaza@gmail.com',
              style: Constraint.textOrangeStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 10,),
                CustomFormFieldWidget(
                  width: 50,
                  text: '_',
                  textFormBGColor: Constraint.txfrmdcolor,
                ),
SizedBox(width: 10,),
                CustomFormFieldWidget(
                  text: '_',
                  width: 50,
                  textFormBGColor: Constraint.txfrmdcolor,
                ),SizedBox(width: 10,),
                CustomFormFieldWidget(
                  text: '_',
                  width: 50,
                  textFormBGColor: Constraint.txfrmdcolor,
                ),SizedBox(width: 10,),
                CustomFormFieldWidget(
                  text: '_',
                  width: 50,
                  textFormBGColor: Constraint.txfrmdcolor,
                ),                  
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  width: mediaQuery.size.width - 100,
                  onTap: () {},
                  text: 'Verify',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}