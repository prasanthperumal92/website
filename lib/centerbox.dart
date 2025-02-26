import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:websitedart/socialbutton.dart';

class CenterBoxWidget extends StatelessWidget {
  final double boxWidth;
  const CenterBoxWidget({super.key, required this.boxWidth});

  @override
  Widget build(BuildContext context) {
    var boxHeight = boxWidth > 480 ? boxWidth * 0.4 : boxWidth * 1.4;
    var title = boxWidth > 480 ? "Prasanth Perumal" : "Prasanth\nPerumal";
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF283618), width: 2),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      width: boxWidth,
      height: boxHeight,
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 10),
              Text(
                title,
                style: TextStyle(fontSize: boxWidth * 0.07),
                softWrap: true,
              ),
              SizedBox(
                width: boxWidth * 0.6,
                child: Text(
                  "An android application developer, writes blog in free time",
                  softWrap: true,
                ),
              ),
              Spacer(),
              Row(
                children: [
                  SocialButton(url: "https://www.linkedin.com/in/prasanth-perumal", image_asset: "assets/images/linkedin.svg"),
                  SocialButton(url: "https://medium.com/@prasanthperumal", image_asset: "assets/images/medium.svg"),
                ],
              )
            ],
          ),
          if (boxWidth > 480)
            Expanded(
              child: Container(
                width: boxWidth * 0.3,
                height: boxHeight,
                decoration: BoxDecoration(
                  color: Color(0xFF283618),
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                child: Image.asset(
                  "assets/images/androidicon.png",
                  color: Theme.of(context).colorScheme.surface,
                ),
              ),
            ),
        ],
      ),
    );
  }
}