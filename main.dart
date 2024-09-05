//import 'package:counter_app/counter.dart';
import 'package:counter_app/form.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Counter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          textTheme: TextTheme(
            headlineMedium:
                TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
            headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.w400),
            headlineSmall: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          )),
      home: CForm(),
    );
  }
}
