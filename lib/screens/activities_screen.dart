import 'package:flutter/material.dart';
import 'package:p_16_web/screens/base_screen.dart';

class ActivitiesScreen extends StatelessWidget {

  static String id = '/activities';

  const ActivitiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseScreen(
        myBody: Container(),
        size: MediaQuery.of(context).size,
        title: 'Activities',
      ),
    );
  }
}
