import 'package:flutter/material.dart';
import 'package:websitedart/centerbox.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var boxWidth = width * 0.7;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 30),
              CenterBoxWidget(boxWidth: boxWidth),
            ],
          ),
        ),
      ),
    );
  }
}