import 'package:flutter/material.dart';
import 'screens/dashboard.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const AirAwareApp());
}

class AirAwareApp extends StatelessWidget {
  const AirAwareApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AirAware',
      theme: AppTheme.lightTheme,
      home: const DashboardScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
