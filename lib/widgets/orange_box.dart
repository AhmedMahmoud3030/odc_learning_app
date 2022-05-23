import 'package:flutter/material.dart';

import '../constraints.dart';

class OrangeBox extends StatelessWidget {
  const OrangeBox({Key key, this.color=Constraint.primaryColor}) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 85,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(21)),
    );
  }
}
