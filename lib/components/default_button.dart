import 'package:commerce_app/constants.dart';
import 'package:commerce_app/size_config.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.isPortrait
          ? double.infinity
          : getProportionateScreenWidth(300),
      height: 56,
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: kPrimaryColor,
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 27,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
