import 'package:flutter/material.dart';
import 'package:VGC_cabs/utils/constants.dart';
import 'package:VGC_cabs/widgets/settings_card.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        children: [
          SettingsCard(
            icon: Icons.person,
            title: 'Profile',
            onTap: () {
              Navigator.pushNamed(context, Routes.profile);
            },
          ),
          SettingsCard(
            icon: Icons.notifications,
            title: 'Notifications',
            onTap: () {
              Navigator.pushNamed(context, Routes.notifications);
            },
          ),
          SettingsCard(
            icon: Icons.payment,
            title: 'Payment',
            onTap: () {
              Navigator.pushNamed(context, Routes.payment);
            },
          ),
          SettingsCard(
            icon: Icons.exit_to_app,
            title: 'Logout',
            onTap: () {
              // Implement logout functionality here
            },
          ),
        ],
      ),
    );
  }
}