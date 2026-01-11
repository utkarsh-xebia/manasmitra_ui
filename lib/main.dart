import 'package:flutter/material.dart';
import 'package:manasmitra_ui/hr_dashboard.dart';
import 'dashboard.dart';

void main() {
  runApp(
    // UI-2
    // const ManasMitraApp()

    // UI-3
    const WellBeingApp()
    );
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
// ==================
class WellBeingApp extends StatelessWidget {
  const WellBeingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HR Central Portal',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF6F8FB),
        fontFamily: 'Inter',
      ),
      home: const HRDashboard(),
    );
  }
}
