import 'package:flutter/material.dart';

class EcoTrackerScreen extends StatelessWidget {
  const EcoTrackerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Eco Impact Tracker")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text("Log your travel today:", style: TextStyle(fontSize: 18)),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                _EcoButton(icon: Icons.directions_walk, label: "Walked"),
                _EcoButton(icon: Icons.directions_bike, label: "Cycled"),
                _EcoButton(icon: Icons.directions_car, label: "Drove"),
              ],
            ),
            const SizedBox(height: 32),
            const Text("Your Impact This Week:", style: TextStyle(fontSize: 18)),
            const SizedBox(height: 16),
            Container(
              height: 200,
              color: Colors.green[100],
              child: const Center(child: Text("Bar Chart Placeholder")),
            ),
          ],
        ),
      ),
    );
  }
}

class _EcoButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const _EcoButton({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(shape: const CircleBorder()),
          child: Icon(icon, size: 30),
        ),
        const SizedBox(height: 6),
        Text(label),
      ],
    );
  }
}
