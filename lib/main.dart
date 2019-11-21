import 'package:divisi_style/custom_button.dart';
import 'package:divisi_style/style/custom_style.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sample Button Style'),
          backgroundColor: Colors.purpleAccent[200],
        ),
        backgroundColor: Colors.grey[200],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('halo button'),
              CustomButton(CustomStyle.mybuttonStyle),
            ],
          ),
        ),
      ),
    );
  }
}
