import 'package:flutter/material.dart';

import 'constants.dart';

class IconinCard extends StatelessWidget {
  final IconData icons;
  final String label;
  IconinCard({this.label, this.icons});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icons,
          color: Colors.white,
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          label,
          style: klabelTextStyle,
        )
      ],
    );
  }
}
