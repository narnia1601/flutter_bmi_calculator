import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  Widget cardChild = Container();
  ReusableCard({required this.color, cardChild}) {
    if (cardChild != null) {
      this.cardChild = cardChild;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
      child: cardChild,
    );
  }
}
