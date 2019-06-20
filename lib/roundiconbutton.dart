import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData iconname;
  final Function onTap;
  RoundIconButton({this.iconname, @required this.onTap});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onTap,
      elevation: 10.0,
      constraints: BoxConstraints.tightFor(
        width: 46,
        height: 46,
      ),
      shape: CircleBorder(),
      fillColor: Color(0XFF4C4F5E),
      child: Icon(iconname),
    );
  }
}