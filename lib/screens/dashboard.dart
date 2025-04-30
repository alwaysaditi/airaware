import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'forecast.dart';
import 'health_tips.dart';
import 'eco_impact.dart';
import 'trends.dart';
import 'settings_screen.dart';


class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AirAware"),
        backgroundColor: AppTheme.primary,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsScreen()),
              );
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            _buildAirQualityCard(context),
            const SizedBox(height: 16),
            _buildMiniForecast(context),
            const SizedBox(height: 16),
            _buildHealthTip(context),
            const SizedBox(height: 16),
            _buildEcoTracker(context),
            const SizedBox(height: 24),
            _buildNavButtons(context),
          ],
        ),
      ),
    );
  }

  Widget _buildAirQualityCard(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Current Air Quality", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("PM2.5: 18 µg/m³", style: TextStyle(fontSize: 18)),
                Icon(Icons.eco, color: AppTheme.moderate),
              ],
            ),
            SizedBox(height: 4),
            Text("Status: Moderate", style: TextStyle(color: AppTheme.moderate)),
          ],
        ),
      ),
    );
  }

  Widget _buildMiniForecast(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Next 3 Days Forecast", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(children: [
                  Icon(Icons.cloud, color: Colors.blue),
                  Text("PM2.5: 20"),
                  Text("Mon")
                ]),
                Column(children: [
                  Icon(Icons.cloud_queue, color: Colors.orange),
                  Text("PM2.5: 28"),
                  Text("Tue")
                ]),
                Column(children: [
                  Icon(Icons.cloud_off, color: Colors.red),
                  Text("PM2.5: 35"),
                  Text("Wed")
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHealthTip(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.good.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(12),
      child: Row(
        children: const [
          Icon(Icons.favorite, color: AppTheme.good),
          SizedBox(width: 12),
          Flexible(child: Text("Air quality is good today! Perfect for a morning jog 🏃‍♂️")),
        ],
      ),
    );
  }

  Widget _buildEcoTracker(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Your Eco Log", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            SizedBox(height: 8),
            Text("🚶 Walked: 2 km\n🚲 Biked: 5 km\n🚗 Drove: 0 km"),
            SizedBox(height: 6),
            Text("🌱 CO₂ saved: 1.8 kg", style: TextStyle(color: AppTheme.good)),
          ],
        ),
      ),
    );
  }

  Widget _buildNavButtons(BuildContext context) {
    return Column(
      children: [
        ElevatedButton.icon(
          icon: const Icon(Icons.show_chart),
          label: const Text("Air Quality Forecast"),
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ForecastScreen())),
        ),
        const SizedBox(height: 8),
        ElevatedButton.icon(
          icon: const Icon(Icons.health_and_safety),
          label: const Text("Health Advice"),
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const HealthAdviceScreen())),
        ),
        const SizedBox(height: 8),
        ElevatedButton.icon(
          icon: const Icon(Icons.eco),
          label: const Text("Eco Tracker"),
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const EcoTrackerScreen())),
        ),
        const SizedBox(height: 8),
        ElevatedButton.icon(
          icon: const Icon(Icons.map),
          label: const Text("Regional Trends"),
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const RegionalTrendsScreen())),
        ),
      ],
    );
  }
}
