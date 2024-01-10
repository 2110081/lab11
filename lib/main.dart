import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:lab11/firebase_options.dart';
import 'login.dart';
import 'registration.dart';
import 'main_page.dart';

// https://firebase.google.com/docs/flutter/setup

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab 11',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const  LoginScreen(),
        '/register': (context) => const  RegistrationScreen(),
        '/mainPage': (context) => const  MainPage(),
      },
    );
  }
}