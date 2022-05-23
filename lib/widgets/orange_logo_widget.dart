import 'package:flutter/material.dart';

import '../constraints.dart';

class OrangeLogoWidget extends StatelessWidget {
  final double width;
  final double height;
  final MainAxisAlignment rowAlignment;

  const OrangeLogoWidget({Key key, this.width = 95, this.height = 95,this.rowAlignment=MainAxisAlignment.center})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: rowAlignment,
      children: [
        Container(
            width: width,
            height: height,
            color: Constraint.primaryColor,
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Orange',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize:height>50? 25:10),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      'TM',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize:height>50? 6:2,
                      ),
                    ),
                  ),
                ],
              ),
            )),
        SizedBox(
          width: height>50? 10:5,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Orange',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize:height>50? 25:10,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Digital',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: height>50? 25:10,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Center',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize:height>50? 25:10,
              ),
            ),
          ],
        )
      ],
    );
  }
}
