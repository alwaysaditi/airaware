import 'package:flutter/material.dart';

class RegionalTrendsScreen extends StatelessWidget {
  const RegionalTrendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Regional Pollution Trends")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text("Clustered Pollution Zones (Ireland)", style: TextStyle(fontSize: 18)),
            const SizedBox(height: 16),
            Container(
              height: 200,
              color: Colors.blueGrey[50],
              child: const Center(child: Text("Map Placeholder")),
            ),
            const SizedBox(height: 24),
            const Text("City Clusters:", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            _regionTag("Cluster 1 – Dublin, Cork"),
            _regionTag("Cluster 2 – Limerick, Galway"),
            _regionTag("Cluster 3 – Rural Counties"),
          ],
        ),
      ),
    );
  }

  Widget _regionTag(String name) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const Icon(Icons.location_on_outlined),
          const SizedBox(width: 10),
          Text(name),
        ],
      ),
    );
  }
}
