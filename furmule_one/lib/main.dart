import 'package:flutter/material.dart';
import 'package:furmule_one/views/splachscreen.dart';
import 'package:furmule_one/views/login.dart';
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
      home: const Login(),
      // const SplashScreen(),
      debugShowCheckedModeBanner: false, 
    );
  }
}
