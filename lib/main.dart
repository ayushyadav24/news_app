import 'package:flutter/material.dart';
import 'package:news/view/home.dart';
import 'package:news/view/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool showingSplash = true;

  LoadHome(){
    Future.delayed(Duration(seconds: 3), (){
      setState(() {
        showingSplash = false;
      });
    });
  }

  // This widget is the root of your application.
  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    LoadHome();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News Flash',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: showingSplash ? SplashScreen() : HomeScreen(),
    );
  }
}
