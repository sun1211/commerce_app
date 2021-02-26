import 'package:commerce_app/components/default_button.dart';
import 'package:commerce_app/constants.dart';
import 'package:commerce_app/screens/sign_in/sign_in_screen.dart';
import 'package:commerce_app/screens/splash/components/splash_content.dart';
import 'package:commerce_app/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Vietnam, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": "We help people conect with store \naround the world",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: SizeConfig.isPortrait ? 500 : 300,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    image: splashData[index]["image"],
                    text: splashData[index]['text'],
                  ),
                ),
              ),
              Container(
                height: SizeConfig.isPortrait ? 200 : 120,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: SizeConfig.isPortrait ? 30 : 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          splashData.length,
                          (index) => buildDot(index: index),
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.isPortrait ? 50 : 10,
                      ),
                      DefaultButton(
                        text: "Continue",
                        press: () {
                          Navigator.pushNamed(context, SignInScreen.routeName);
                        },
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
