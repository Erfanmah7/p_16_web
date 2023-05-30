import 'package:flutter/material.dart';
import 'package:p_16_web/screens/base_screen.dart';

class HomeScreen extends StatelessWidget {

  static String id = '/home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseScreen(
        myBody: Container(),
        size: MediaQuery.of(context).size,
        title: 'Home',
      ),
    );
  }
}
