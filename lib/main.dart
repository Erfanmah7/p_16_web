import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:p_16_web/screens/about_screen.dart';
import 'package:p_16_web/screens/activities_screen.dart';
import 'package:p_16_web/screens/home_screen.dart';
import 'package:p_16_web/screens/products_screen.dart';
import 'package:p_16_web/screens/relationship_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        
        GetPage(name: HomeScreen.id, page: ()=> const HomeScreen()),
        GetPage(name: ActivitiesScreen.id, page: ()=> const ActivitiesScreen()),
        GetPage(name: RelationshipScreen.id, page: ()=> const RelationshipScreen()),
        GetPage(name: ProductsScreen.id, page: ()=> const ProductsScreen()),
        GetPage(name: AboutScreen.id, page: ()=> const AboutScreen()),

      ],
      defaultTransition: Transition.fadeIn,
      initialRoute: HomeScreen.id,
    );
  }
}
