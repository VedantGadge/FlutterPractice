import 'package:app1/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      const MyApp()); // Entry point of the app, calling runApp to start the app with MyApp widget
}

class MyApp extends StatelessWidget {
  const MyApp(
      {super.key}); //Constructor for MyApp, using const for optimization and passing a key to the superclass

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily:
              'Poppins'), // Sets the default font family for the app's theme
      home:
          HomePage(), // Sets the HomePage widget as the home screen of the app
    );
  }
}
