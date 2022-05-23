import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:odc_learning_app/widgets/forget_password_phase_1_widget.dart';

import '../constraints.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_form_field_widget.dart';
import '../widgets/forget_password_phase_2_widget.dart';
import '../widgets/forget_password_phase_3_widget.dart';

class ForgetPasswordScreen extends StatelessWidget {
  static const routeName = '/forget-password';

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Froget Password',
            style: Constraint.subTitleStyle,
          ),
          backgroundColor: Color(0xffffffff),
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Constraint.textBColor),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: ForgetPasswordPhase3Widget());
  }
}
