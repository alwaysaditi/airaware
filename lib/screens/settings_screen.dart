import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool notificationsEnabled = true;
  bool darkMode = false;
  bool shareData = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        backgroundColor: AppTheme.primary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text("General", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          SwitchListTile(
            title: const Text("Enable Dark Mode"),
            value: darkMode,
            onChanged: (value) {
              setState(() {
                darkMode = value;
              });
            },
          ),
          const Divider(height: 32),

          const Text("Notifications", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          SwitchListTile(
            title: const Text("Air Quality Alerts"),
            value: notificationsEnabled,
            onChanged: (value) {
              setState(() {
                notificationsEnabled = value;
              });
            },
          ),
          const Divider(height: 32),

          const Text("Privacy", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          SwitchListTile(
            title: const Text("Allow Data Sharing"),
            subtitle: const Text("Help improve air quality forecasting"),
            value: shareData,
            onChanged: (value) {
              setState(() {
                shareData = value;
              });
            },
          ),
          const Divider(height: 32),

          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text("About"),
            onTap: () {
              showAboutDialog(
                context: context,
                applicationName: "AirAware",
                applicationVersion: "1.0.0",
                children: [
                  const Text("AirAware helps you stay informed about air quality levels and take action for your health and environment.")
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
