import 'package:flutter/material.dart';
import 'package:p_16_web/constants.dart';
import 'package:p_16_web/screens/about_screen.dart';
import 'package:p_16_web/screens/activities_screen.dart';
import 'package:p_16_web/screens/home_screen.dart';
import 'package:p_16_web/screens/products_screen.dart';
import 'package:p_16_web/screens/relationship_screen.dart';

import 'customOption.dart';

class CustomTabBar extends StatelessWidget {
  final bool isLarge;

  const CustomTabBar({Key? key, required this.isLarge}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 15,
        ),
        CustomOption(
          isLarge: isLarge,
          option: 'about',
          isClick: () {
            kNavigator(AboutScreen.id);
          },
        ),
        const SizedBox(
          width: 15,
        ),
        CustomOption(
          isLarge: isLarge,
          option: 'home',
          isClick: () {
            kNavigator(HomeScreen.id);
          },
        ),
        const SizedBox(
          width: 15,
        ),
        CustomOption(
          isLarge: isLarge,
          option: 'activities',
          isClick: () {
            kNavigator(ActivitiesScreen.id);
          },
        ),
        const SizedBox(
          width: 15,
        ),
        CustomOption(
          isLarge: isLarge,
          option: 'Relationship',
          isClick: () {
           kNavigator( RelationshipScreen.id);
          },
        ),
        const SizedBox(
          width: 15,
        ),
        CustomOption(
          isLarge: isLarge,
          option: 'Products',
          isClick: () {
            kNavigator(ProductsScreen.id);
          },
        ),
        const SizedBox(
          width: 15,
        ),
      ],
    );
  }
}
