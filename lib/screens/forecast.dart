import 'package:flutter/material.dart';

class ForecastScreen extends StatelessWidget {
  const ForecastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Air Quality Forecast")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              "Next 5 Days - PM2.5 & NO₂ Forecast",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Container(
              height: 200,
              color: Colors.grey[300],
              child: const Center(child: Text("Line Chart Placeholder")),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _pollutantCard("PM2.5", "18 µg/m³", Colors.orange),
                _pollutantCard("NO₂", "25 µg/m³", Colors.red),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _pollutantCard(String name, String value, Color color) {
    return Card(
      child: Container(
        width: 130,
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(value, style: TextStyle(fontSize: 18, color: color)),
          ],
        ),
      ),
    );
  }
}
