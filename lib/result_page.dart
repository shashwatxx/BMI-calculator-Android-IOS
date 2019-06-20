import 'constants.dart';
import 'containercard.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String bmiResult;
  final String resulttext;
  final String comment;
  Result(
      {@required this.bmiResult,
      @required this.resulttext,
      @required this.comment});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("YOUR BMI RESULT"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: ContainerCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "$resulttext",
                    style:
                        TextStyle(color: Colors.lightGreenAccent, fontSize: 20),
                  ),
                  Text(
                    "$bmiResult",
                    style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "$comment",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              colour: kactiveCardColor,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: kbottombuttonheight,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10),
              child: Center(
                child: Text(
                  "Re-Calculate",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              decoration: BoxDecoration(color: kbottombuttoncolor, boxShadow: [
                BoxShadow(color: kbottombuttoncolor, blurRadius: 15.0)
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
