import 'package:flutter/material.dart';
import 'package:portfolio_website/portfolio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Portfolio Website',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.purple,
          canvasColor: Colors.purple.shade100,
          useMaterial3: true,
          fontFamily: "custom",
        ),
        home: const Portfolio());
  }
}
