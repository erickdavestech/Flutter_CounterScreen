import 'package:flutter/material.dart';

void main() {
//Call MainApp using const for performance
  runApp(const MainApp());
}

//Class MainApp
class MainApp extends StatelessWidget {
  //Constructor
  const MainApp({super.key});
// sobre-escribe los metodos
  @override
  // returns a widget method name is build
  Widget build(BuildContext context) {
    // Widget MaterialApp that will be returned
    return const MaterialApp(
      // using Scaffold
      home: Scaffold(
        // Center the Scaffold
        body: Center(
          //
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
