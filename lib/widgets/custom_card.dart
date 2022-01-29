import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    this.child,
    this.bgColor,
    Key key,
  }) : super(key: key);

  final Widget child;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: const BorderRadius.all(Radius.circular(15.0))),
        child: child,
      ),
    );
  }
}
