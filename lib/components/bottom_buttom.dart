import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButtom extends StatelessWidget {
  final String mainText;
  final VoidCallback onTaping;

  BottomButtom({required this.mainText, required this.onTaping});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTaping,
      child: Container(
        color: Color(0xFFEB1555),
        child: Center(
          child: Text(
            mainText,
            style: kLargeText,
          ),
        ),
        height: 80.0,
        width: double.infinity,
      ),
    );
  }
}
