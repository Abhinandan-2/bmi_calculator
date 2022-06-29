import 'package:flutter/material.dart';

class RoundActionButtom extends StatelessWidget {
  final IconData icon;
  final VoidCallback buttomPressed;
  RoundActionButtom({required this.icon, required this.buttomPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: buttomPressed,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
