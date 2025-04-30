import 'package:flutter/material.dart';

class HealthAdviceScreen extends StatelessWidget {
  const HealthAdviceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Health Advisories")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _adviceCard("Limit outdoor activity today", "PM2.5 levels are high."),
          _adviceCard("Safe for jogging", "AQI is in the green zone."),
          _adviceCard("Use masks if sensitive", "O₃ may irritate lungs today."),
        ],
      ),
    );
  }

  Widget _adviceCard(String title, String subtitle) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: const Icon(Icons.health_and_safety, color: Colors.teal),
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}
