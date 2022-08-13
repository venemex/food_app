import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:food_app/utils/Constants.dart';

class RoundedTextField extends StatefulWidget {
  final String? hintText;
  final bool obscureText;
  final TextEditingController controller;
  const RoundedTextField(
      {Key? key,
      this.hintText = "",
      this.obscureText = false,
      required this.controller})
      : super(key: key);

  @override
  State<RoundedTextField> createState() => _RoundedTextFieldState();
}

class _RoundedTextFieldState extends State<RoundedTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: ColorConstants.redPigmentColor),
          borderRadius: BorderRadius.circular(12.0)),
      child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: TextField(
            style: TextStyle(
                color: ColorConstants.viennaColor, fontWeight: FontWeight.w600),
            controller: widget.controller,
            obscureText: widget.obscureText,
            decoration: InputDecoration(
                hintText: widget.hintText, border: InputBorder.none),
          )),
    );
  }
}
