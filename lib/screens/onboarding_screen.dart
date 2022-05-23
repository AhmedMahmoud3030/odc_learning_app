import 'package:flutter/material.dart';
import 'package:odc_learning_app/screens/sign_in_screen.dart';
import 'package:odc_learning_app/screens/sign_up_screen.dart';
import 'package:odc_learning_app/widgets/custom_button.dart';

import '../constraints.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

final _controller = PageController();
int _currentPage = 0;

class _OnboardingScreenState extends State<OnboardingScreen> {
  final List<Map<String, String>> splashData = [
    {
      "title": "Learn a lot of courses in Orange Education",
      "subtitle":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      "image": "assets/images/onboarding_image_1.png"
    },
    {
      "title": "Learn a lot of courses in Orange Education",
      "subtitle":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      "image": "assets/images/onboarding_image_2.png"
    },
    {
      "title": "Learn a lot of courses in Orange Education",
      "subtitle":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      "image": "assets/images/onboarding_image_3.png"
    },
  ];

  AnimatedContainer _buildDots({int index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        color: _currentPage == index ?Constraint.primaryColor: Color(0xFF8F8F8F),
      ),
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      curve: Curves.easeIn,
      width:  10,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: splashData.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.all(50.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          splashData[index]['image'],
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          splashData[index]['title'],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          splashData[index]['subtitle'],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Color(0xFF8F8F8F),
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                onPageChanged: (value) => setState(() => _currentPage = value),
              ),
              flex: 8,
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      splashData.length,
                      (index) => _buildDots(index: index),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      CustomButton(onTap: () {Navigator.of(context).pushNamed(SignUpWidget.routeName);}, text: 'Join Now'),
                      CustomButton(
                          onTap: () {Navigator.of(context).pushNamed(SignInWidget.routeName);}, text: 'Log in', isOutlined: true),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
