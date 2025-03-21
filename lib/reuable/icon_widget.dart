import 'package:flutter/material.dart';
import '../constant.dart';

class IconWidget extends StatelessWidget {
  final IconData icon;
  final String label;

  const IconWidget({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80.0),
        const SizedBox(height: 15.0),
        Text(label, style: kLabelTextStyle),
      ],
    );
  }
}
