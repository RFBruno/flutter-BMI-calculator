import 'package:calculadoraimc/home_page.dart';
import 'package:flutter/material.dart';

var routes = {
  '/': (_) => const HomePage()
};

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      routes: routes,
    );
  }
}
