import 'package:flutter/material.dart';
import 'package:p_16_web/widgets/customFooter.dart';
import 'package:p_16_web/widgets/customNavbar.dart';

class BaseScreen extends StatelessWidget {
  final Widget myBody;
  final Size size;
  final String title;

  const BaseScreen(
      {Key? key, required this.myBody, required this.size, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomNavbar(size: size),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                Text(title,style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  color: Colors.grey.shade400,
                  height: 2,
                  width: title.length * 7,
                ),
                const SizedBox(
                  height: 35,
                ),
                myBody,
                const CustomFooter(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
