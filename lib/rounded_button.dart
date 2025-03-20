import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final IconData icon;

  const RoundedButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(height: 56.0, width: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0xFF1D1E50),
      onPressed: () {},
      child: Icon(icon),
    );
  }
}
