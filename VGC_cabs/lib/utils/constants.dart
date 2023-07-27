import 'package:flutter/material.dart';

class Constants {
  static const String appName = "VGC Cabs";
  static const Color primaryColor = Colors.blue;
  static const Color secondaryColor = Colors.white;
  static const double defaultPadding = 16.0;
  static const double defaultBorderRadius = 8.0;
  static const double defaultElevation = 4.0;
  static const double defaultIconSize = 24.0;
  static const TextStyle headingStyle = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle subheadingStyle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle bodyTextStyle = TextStyle(
    fontSize: 16.0,
  );
  static const List<String> carTypes = [
    "Hatchback",
    "Sedan",
    "SUV",
    "Luxury",
  ];
  static const List<String> paymentMethods = [
    "Credit Card",
    "Debit Card",
    "Net Banking",
    "UPI",
    "PayPal",
  ];
  static const List<String> rideStatus = [
    "Pending",
    "Accepted",
    "Completed",
    "Cancelled",
  ];
}