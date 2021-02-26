import 'package:commerce_app/screens/home/components/categories.dart';
import 'package:commerce_app/screens/home/components/discount_banner.dart';
import 'package:commerce_app/screens/home/components/popular_product.dart';
import 'package:commerce_app/screens/home/components/special_offers.dart';
import 'package:commerce_app/size_config.dart';
import 'package:flutter/material.dart';

import 'home_header.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            DiscountBanner(),
            Categories(),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
