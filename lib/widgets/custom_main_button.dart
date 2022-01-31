import 'package:flutter/material.dart';

class CustomMainButton extends StatelessWidget {
  const CustomMainButton({
    @required this.buttonText,
    @required this.onPressed,
    Key key,
  }) : super(key: key);

  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 60,
      child: MaterialButton(
        child: Text(
          buttonText.toUpperCase(),
          style: TextStyle(fontSize: 25),
        ),
        onPressed: onPressed,
        color: Colors.redAccent,
        height: 45,
        minWidth: double.infinity,
      ),
    );
  }
}
