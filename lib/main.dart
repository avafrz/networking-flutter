import 'package:flutter/material.dart';
import 'package:flutternetworking/screens/load_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 8, 79, 161)),
        useMaterial3: true,
      ),
      home: LoadScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
