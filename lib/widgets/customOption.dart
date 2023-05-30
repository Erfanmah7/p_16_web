import 'package:flutter/material.dart';

class CustomOption extends StatelessWidget {
  final bool isLarge;
  final String option;

  final VoidCallback isClick;

  const CustomOption(
      {Key? key,
      required this.isLarge,
      required this.option,
      required this.isClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: isClick,
        child: Text(
          option,
          style: TextStyle(color: Colors.white, fontSize: isLarge ? 20 : 15),
        ),
      ),
    );
  }
}
