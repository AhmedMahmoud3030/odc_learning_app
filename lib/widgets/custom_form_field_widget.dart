// ignore_for_file: prefer_const_constructors, avoid_init_to_null

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constraints.dart';

class CustomFormFieldWidget extends StatelessWidget {
  const CustomFormFieldWidget(
      {Key key,
      this.fontAwesomePrefixIcon,
      this.width,
      this.textFormBGColor=Constraint.txfrmlcolor,
      this.fontAwesomeSuffixIcon = null,
      this.text = ''})
      : super(key: key);

  final IconData fontAwesomePrefixIcon;
  final IconData fontAwesomeSuffixIcon;
  final String text;
  final double width;
  final Color textFormBGColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      alignment: Alignment.center,
      child: TextField(
        cursorColor: Constraint.primaryColor,
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FaIcon(
              fontAwesomePrefixIcon,
              color: textFormBGColor,
              size: 25,
            ),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FaIcon(
              fontAwesomeSuffixIcon,
              color: Color(0xffD0D0D0),
              size: 25,
            ),
          ),
          fillColor: Color(0xffF8F8F8),
          filled: true,
          hintText: text,
          hintStyle: TextStyle(color: Color(0xffD0D0D0)),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Color(0xffF8F8F8)),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Color(0xffF8F8F8)),
            borderRadius: BorderRadius.circular(10),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                width: 1, color: Color.fromARGB(255, 235, 81, 81)),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                width: 1, color: Color.fromARGB(255, 245, 95, 95)),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
