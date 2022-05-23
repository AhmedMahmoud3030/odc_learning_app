import 'package:flutter/material.dart';
import 'package:odc_learning_app/screens/forget_password_screen.dart';
import 'package:odc_learning_app/screens/privacy_policy_screen.dart';
import 'package:odc_learning_app/screens/sign_in_screen.dart';
import 'package:odc_learning_app/screens/sign_up_screen.dart';

import 'screens/splash_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,

      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: {
            SignUpWidget.routeName: (ctx) => SignUpWidget(), 
            SignInWidget.routeName: (ctx) => SignInWidget(), 
            PrivacyPolicyScreen.routeName: (ctx) => PrivacyPolicyScreen(), 
            ForgetPasswordScreen.routeName: (ctx) => ForgetPasswordScreen(), 
          },
    );
  }
}
