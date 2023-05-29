import 'package:flutter/material.dart';
import 'package:appwrite/appwrite.dart';
import 'screens/loginsignup.dart';
import 'screens/login.dart';
import 'screens/signup.dart';
import 'screens/homescreen.dart';

void main() {
  runApp(MyApp());
}

final MaterialColor black = const MaterialColor(
  0xFF000000,
  <int, Color>{
    50: const Color(0xFF000000),
    100: const Color(0xFF000000),
    200: const Color(0xFF000000),
    300: const Color(0xFF000000),
    400: const Color(0xFF000000),
    500: const Color(0xFF000000),
    600: const Color(0xFF000000),
    700: const Color(0xFF000000),
    800: const Color(0xFF000000),
    900: const Color(0xFF000000),
  },
);

class MyApp extends StatelessWidget {
  final Client client = Client()
    ..setEndpoint('https://cloud.appwrite.io/v1')
    ..setProject('646daa0fec7e78728a69');

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/login': (context) => Login(),
        '/signup': (context) => Signup(),
        '/loginsignup': (context) => LoginSignup(),
        '/home': (context) => MyHome(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Task Management App',
      theme: ThemeData(
        primarySwatch: black,
      ),
      home: LoginSignup(),
    );
  }
}
