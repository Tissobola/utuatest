import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:utua_test/pages/home_page.dart';

void main() async {
  // Firebase Initialization
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Utua Test',
      home: const HomePageWidget(),
    );
  }
}
