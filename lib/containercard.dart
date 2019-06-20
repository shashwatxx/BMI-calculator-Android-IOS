import 'constants.dart';
import 'package:flutter/material.dart';

class ContainerCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final Function onPress;

  ContainerCard({@required this.colour, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(color: kactiveCardColor, blurRadius: 5.0)]),
        margin: EdgeInsets.all(10),
      ),
    );
  }
}
