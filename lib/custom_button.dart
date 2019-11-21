import 'package:divisi_style/style/custom_style.dart';
import 'package:flutter/material.dart';
import 'package:division/division.dart';

class CustomButton extends StatefulWidget {
  final ParentStyle myButtonStyle;

  CustomButton(this.myButtonStyle);
  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Parent(
      child: Container(
        child: Txt("division widget", style: CustomStyle.myTxtStyle),
      ),
      style: widget.myButtonStyle,
    );
  }
}
