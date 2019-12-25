import 'package:flutter/material.dart';

import 'constants.dart';

void main() => runApp(CalculatorApp());

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                color: bgColor,
                padding: EdgeInsets.symmetric(
                  vertical: 96.0,
                  horizontal: 24.0,
                ),
                alignment: Alignment.topRight,
                child: Text(
                  "3,670",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w300,
                    fontSize: 84.0,
                    color: mainTextColor,
                  ),
                ),
              ),
            ),
            Container(
              color: bgColor,
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: Wrap(
                  children: <Widget>[
                    NeumorphicButton(
                      label: "AC",
                      color: miscOpColor,
                    ),
                    NeumorphicButton(
                      label: "+/-",
                      color: miscOpColor,
                    ),
                    NeumorphicButton(
                      label: "%",
                      color: miscOpColor,
                    ),
                    NeumorphicButton(
                      label: "÷",
                      color: opColor,
                    ),
                    NeumorphicButton(
                      label: "7",
                      color: textColor,
                    ),
                    NeumorphicButton(
                      label: "8",
                      color: textColor,
                    ),
                    NeumorphicButton(
                      label: "9",
                      color: textColor,
                    ),
                    NeumorphicButton(
                      label: "×",
                      color: opColor,
                    ),
                    NeumorphicButton(
                      label: "4",
                      color: textColor,
                    ),
                    NeumorphicButton(
                      label: "5",
                      color: textColor,
                    ),
                    NeumorphicButton(
                      label: "6",
                      color: textColor,
                    ),
                    NeumorphicButton(
                      label: "-",
                      color: opColor,
                    ),
                    NeumorphicButton(
                      label: "1",
                      color: textColor,
                    ),
                    NeumorphicButton(
                      label: "2",
                      color: textColor,
                    ),
                    NeumorphicButton(
                      label: "3",
                      color: textColor,
                    ),
                    NeumorphicButton(
                      label: "+",
                      color: opColor,
                    ),
                    SizedBox(
                      width: 190.0,
                      child: NeumorphicButton(
                        label: "0",
                        color: textColor,
                      ),
                    ),
                    NeumorphicButton(
                      label: ".",
                      color: textColor,
                    ),
                    NeumorphicButton(
                      label: "=",
                      color: opColor,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NeumorphicButton extends StatefulWidget {
  final Color color;
  final String label;

  const NeumorphicButton({Key key, this.color, this.label}) : super(key: key);

  @override
  _NeumorphicButtonState createState() => _NeumorphicButtonState();
}

class _NeumorphicButtonState extends State<NeumorphicButton> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        width: 80,
        decoration:
            pressed ? insetShadowDecoration() : normalShadowDecoration(),
        child: InkWell(
          onTap: () {
            setState(() {
              pressed = true;
            });
          },
          child: Center(
            child: Text(
              widget.label,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w300,
                fontSize: 32.0,
                color: widget.color,
              ),
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration normalShadowDecoration() {
    return BoxDecoration(
      color: buttonColor,
      borderRadius: BorderRadius.circular(100),
      border: Border.all(
        color: borderColor,
        width: 1.0,
      ),
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: upperShadow,
          blurRadius: 12.0,
          offset: Offset(-8.0, -8.0),
        ),
        BoxShadow(
          color: lowerShadow,
          blurRadius: 12.0,
          offset: Offset(8.0, 8.0),
        )
      ],
    );
  }

  BoxDecoration insetShadowDecoration() {
    return BoxDecoration(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(100),
      border: Border.all(
        color: borderColor,
        width: 1.0,
      ),
      boxShadow: <BoxShadow>[
        BoxShadow(offset: Offset(0, 0), color: insetShadow),
        BoxShadow(
          color: upperShadow,
          blurRadius: 8.0,
          spreadRadius: -1.0,
          offset: Offset(8.0, 4),
        ),
        BoxShadow(
          color: lowerShadow,
          blurRadius: 32.0,
          offset: Offset(.0, 0),
        ),
      ],
    );
  }
}
