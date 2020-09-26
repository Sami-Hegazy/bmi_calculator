import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';

const bottomContainerHeight = 75.0;
const bottomContainerColor = Color(0xFFEB1555);
const activeCardColor = Color(0xFF1D1E33);
const inActiveCardColor = Color(0xFF111328);

enum GenderType { Male, Female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
//  Color maleCardColour = inActiveCardColor;
//  Color femaleCardColour = inActiveCardColor;

  GenderType selectedGender;

//  void updateColor(GenderType g) {
//    if (g == GenderType.Male) {
//      if (maleCardColour == inActiveCardColor) {
//        maleCardColour = activeCardColor;
//        femaleCardColour = inActiveCardColor;
//      } else {
//        maleCardColour = inActiveCardColor;
//      }
//    } else if (g == GenderType.Female) {
//      if (femaleCardColour == inActiveCardColor) {
//        femaleCardColour = activeCardColor;
//        maleCardColour = inActiveCardColor;
//      } else {
//        femaleCardColour = inActiveCardColor;
//      }
//    }
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = GenderType.Male;
                        });
                      },
                      child: ReusableCard(
                        cardChild: childCard('MALE', FontAwesomeIcons.mars),
                        cardColor: selectedGender == GenderType.Male
                            ? activeCardColor
                            : inActiveCardColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = GenderType.Female;
                        });
                      },
                      child: ReusableCard(
                        cardChild: childCard('FEMALE', FontAwesomeIcons.venus),
                        cardColor: selectedGender == GenderType.Female
                            ? activeCardColor
                            : inActiveCardColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      cardColor: activeCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      cardColor: activeCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardColor: activeCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ],
        ),
      ),
    );
  }
}
