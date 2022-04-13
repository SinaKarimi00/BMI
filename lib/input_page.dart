import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'resuable_card.dart';

const Color activeCardColor = Color(0xFF1D1E33);
const Color inactiveCardColor = Color(0xFF111328);
const bottomContainerHeight = 80.0;
const femaleIcon = FontAwesomeIcons.venus;
const maleIcon = FontAwesomeIcons.mars;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color femaleColor = inactiveCardColor;
  Color maleColor = inactiveCardColor;
  // 1 = male , 2 = female
  void updateColor(int gender) {
    //male card press
    if (gender == 1) {
      if (maleColor == inactiveCardColor) {
        maleColor = activeCardColor;
        femaleColor = inactiveCardColor;
      } else {
        maleColor = inactiveCardColor;
      }
    }
    //female card press
    if (gender == 2) {
      if (femaleColor == inactiveCardColor) {
        femaleColor = activeCardColor;
        maleColor = inactiveCardColor;
      } else {
        femaleColor = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: ReusableCard(
                      colour: maleColor,
                      cardChild: IconContent(
                        icon: maleIcon,
                        label: "Male",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: ReusableCard(
                      colour: femaleColor,
                      cardChild: IconContent(
                        icon: femaleIcon,
                        label: "Female",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: activeCardColor,
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: activeCardColor,
                ),
              ),
              Expanded(
                  child: ReusableCard(
                colour: activeCardColor,
              )),
            ],
          )),
          Expanded(
              child: Container(
            color: Color(0x0FFbe1555),
            width: double.infinity,
            height: bottomContainerHeight,
            margin: EdgeInsets.only(top: 10.0),
          ))
        ],
      ),
    );
  }
}
