import 'package:flutter/material.dart';
import 'package:furmule_one/views/home.dart';
import 'package:furmule_one/widgets/spalshWarpper.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Furmule One',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home:Home(),
      // SplashScreenWrapper(),
      debugShowCheckedModeBanner: false, 
    );
  }
}
