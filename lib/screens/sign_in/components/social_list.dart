import 'package:commerce_app/components/socal_card.dart';
import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocalCard(
          icon: "assets/icons/google-icon.svg",
          press: () {},
        ),
        SocalCard(
          icon: "assets/icons/facebook-2.svg",
          press: () {},
        ),
        SocalCard(
          icon: "assets/icons/twitter.svg",
          press: () {},
        ),
      ],
    );
  }
}
