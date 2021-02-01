import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 50,
        ),
        Image.asset("assets/images/logo.png", height: 310),
      ],
    );
  }
}
