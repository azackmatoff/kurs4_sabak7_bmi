import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderWidget extends StatelessWidget {
  const GenderWidget({
    Key key,
    @required this.icon,
    @required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 28.0),
      child: Column(
        children: [
          FaIcon(
            icon,
            size: 85.0,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 25.0),
          ),
        ],
      ),
    );
  }
}
