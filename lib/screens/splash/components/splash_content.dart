import 'package:commerce_app/constants.dart';
import 'package:commerce_app/size_config.dart';
import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "TOKOTO",
            style: TextStyle(
              fontSize: 36,
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            text,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: SizeConfig.isPortrait ? 50 : 0,
          ),
          Image.asset(
            image,
            width: 250,
          ),
        ],
      ),
    );
  }
}
