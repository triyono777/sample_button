import 'package:divisi_style/style/custom_style.dart';
import 'package:flutter/material.dart';
import 'package:division/division.dart';

class CustomButton extends StatefulWidget {
  final ParentStyle myButtonStyle;
  // final TxtStyle myTxtStyle; // ini constructor

  CustomButton(this.myButtonStyle); // ini kalau tanpa constructor
  // CustomButton(this.myButtonStyle, this.myTxtStyle);
  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isTapDown = false;
  @override
  Widget build(BuildContext context) {
    return Parent(
      child: Container(
        child: Txt("division widget",
            style: CustomStyle.myTxtStyle), // ini kalau tanpa cnstructor
        // child: Txt("division widget", style: widget.myTxtStyle),
      ),
      style: widget.myButtonStyle.clone()
        ..scale((isTapDown ? 1.3 : 1))
        ..elevation((isTapDown ? 0 : 10)),
      gesture: GestureClass()
        ..onTapDown((details) {
          setState(() {
            isTapDown = true;
          });
        })
        ..onTapUp((details) {
          setState(() {
            isTapDown = false;
          });
        })
        ..onTapCancel(() {
          setState(() {
            isTapDown = false;
          });
        }),
    );
  }
}
