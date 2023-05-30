import 'package:flutter/material.dart';
import 'package:p_16_web/constants.dart';
import 'package:p_16_web/widgets/custom_tab_bar.dart';

class CustomNavbar extends StatelessWidget {
  final Size size;

  const CustomNavbar({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kHeaderHeight,
      width: size.width,
      decoration: const BoxDecoration(color: Colors.black),
      child: navbar(),
    );
  }

  Widget navbar() {
    print(size.width);
    if (size.width < kMediumWidth) {
      return Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          Image.asset(
            'images/Mega1.png',
            height: 35,
          ),
          const Spacer(
            flex: 2,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              )),
          const SizedBox(
            width: 20,
          ),
        ],
      );
    } else if (size.width < kLargeWidth) {
      return Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          Image.asset(
            'images/Mega1.png',
            height: 35,
          ),
          const Spacer(
            flex: 2,
          ),
          const CustomTabBar(isLarge: false,),
          const SizedBox(
            width: 10,
          ),
        ],
      );
    } else {
      return Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          Image.asset(
            'images/Mega1.png',
            height: 35,
          ),
          const Spacer(
            flex: 2,
          ),
          const CustomTabBar(isLarge: true),
          const SizedBox(
            width: 10,
          ),
        ],
      );
    }
  }
}
