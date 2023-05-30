import 'package:flutter/material.dart';
import 'package:p_16_web/screens/base_screen.dart';

class AboutScreen extends StatelessWidget {

  static String id = '/about';

  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseScreen(
        myBody: Container(),
        size: MediaQuery.of(context).size,
        title: 'About',
      ),
    );
  }
}
