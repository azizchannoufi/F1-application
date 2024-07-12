import 'package:flutter/material.dart';
import 'package:furmule_one/views/home.dart';
import 'package:furmule_one/widgets/spalshWarpper.dart';
import 'package:provider/provider.dart';
import 'package:furmule_one/viewmodels/user_view_model.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserViewModel()),
      ],
      child: MyApp(),
    ),);
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
      routes: {
        "home":(context)=> Home(),
      },
      home: SplashScreenWrapper(),
      debugShowCheckedModeBanner: false, 
    );
  }
}
