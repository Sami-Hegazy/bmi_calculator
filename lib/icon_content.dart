import 'package:flutter/material.dart';

class childCard extends StatelessWidget {
  final String childText;
  final IconData childIcon;

  childCard(this.childText, this.childIcon);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          childIcon,
          size: 60.0,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          childText,
          style: TextStyle(fontSize: 18, color: Color(0xFF8D8E98)),
        ),
      ],
    );
  }
}
