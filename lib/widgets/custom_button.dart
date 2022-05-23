import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:odc_learning_app/constraints.dart';

class CustomButton extends StatelessWidget {
  final Function onTap;
  final String text;
  final bool isOutlined;
  final double width;
  final double height;

  const CustomButton(
      {Key key,
      this.onTap,
      this.text = 'Test',
      this.width=150,
      this.height=50,
      this.isOutlined = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: FlatButton(
        onPressed: onTap,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            color: isOutlined ? Constraint.primaryColor : Colors.white,
          ),
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(
              color: Constraint.primaryColor,
              width: 1,
              style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(7),
        ),
        color: isOutlined ? Colors.white : Constraint.primaryColor,
      ),
    );
  }
}
