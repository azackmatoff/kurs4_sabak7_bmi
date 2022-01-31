import 'package:flutter/material.dart';

class CustomCircleButton extends StatelessWidget {
  const CustomCircleButton({
    @required this.buttonText,
    @required this.onPressed,
    Key key,
  }) : super(key: key);

  final String buttonText;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text(
        buttonText,
        style: TextStyle(
          fontSize: 42,
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: onPressed,
      color: const Color(0xFF4D516B),
      height: 50,
      minWidth: 50,
      shape: CircleBorder(side: BorderSide()),
    );
  }
}
