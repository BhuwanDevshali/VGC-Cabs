import 'package:flutter/material.dart';
import 'package:VGC_cabs/utils/routes.dart';
import 'package:VGC_cabs/screens/home_screen.dart';

void main() {
  runApp(VGCCabsApp());
}

class VGCCabsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VGC Cabs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: Routes.homeScreen,
      routes: {
        Routes.homeScreen: (context) => HomeScreen(),
        // Add routes for other screens here
      },
    );
  }
}