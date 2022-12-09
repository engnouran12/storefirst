import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:storefirst/screens/homelayout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Homepage.id: (context) => const Homepage(),
       // upd
      },
      initialRoute: Homepage.id,
    );
  }
}
