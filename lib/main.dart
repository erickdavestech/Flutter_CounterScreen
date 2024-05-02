import 'package:flutter/material.dart';
import 'package:flutter_daves/config/app_theme.dart';
//import 'package:flutter_daves/presentation/screens/counter.dart';
import 'package:flutter_daves/presentation/screens/counter_functions_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getThemedark(),
        home: const CounterFunctionsScreen());
  }
}
