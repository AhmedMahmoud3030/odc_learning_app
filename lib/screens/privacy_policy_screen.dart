import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../constraints.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  static const routeName = '/privacy-policy';

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Constraint.textBColor),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        height: mediaQuery.size.height,
        width: mediaQuery.size.width,
        color: const Color(0xffffffff),
        //color: Colors.amber,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            height: mediaQuery.size.height,
            width: mediaQuery.size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Privacy ',
                      style: Constraint.headerStyle,
                    ),
                    Text(
                      'Policy',
                      style: Constraint.headerOrangeStyle,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Html(
                  data: """
                <p>This is the privacy policy for the website.</p>
                """,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
