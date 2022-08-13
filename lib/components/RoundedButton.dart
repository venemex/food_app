import 'package:flutter/material.dart';

class RoundedButton extends StatefulWidget {
  final Color color;
  final Widget child;
  const RoundedButton({Key? key, required this.color, required this.child})
      : super(key: key);

  @override
  State<RoundedButton> createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        width: size.width,
        height: 40,
        child: widget.child,
        decoration: BoxDecoration(
            color: widget.color,
            border: Border.all(color: widget.color, width: 1),
            borderRadius: BorderRadius.circular(10)));
  }
}
