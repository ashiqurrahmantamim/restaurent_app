import 'package:flutter/material.dart';
import 'package:food_app/screens/screens.dart';
import 'package:food_app/shared/constants.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  
      theme: ThemeData(
        primaryColor:Colors.green,
        
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}