import 'package:flutter/material.dart';
import 'dashboard.dart';

void main() {
  runApp(const ManasMitraApp());
}

class ManasMitraApp extends StatelessWidget {
  const ManasMitraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ManasMitra Admin',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF6F8FB),
        primaryColor: const Color(0xFF16A34A),
        fontFamily: 'Roboto',
      ),
      home: const DashboardScreen(),
    );
  }
}
