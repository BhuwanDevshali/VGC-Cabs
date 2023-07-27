import 'package:flutter/material.dart';
import 'package:VGC_cabs/screens/home_screen.dart';
import 'package:VGC_cabs/screens/search_screen.dart';
import 'package:VGC_cabs/screens/booking_screen.dart';
import 'package:VGC_cabs/screens/profile_screen.dart';
import 'package:VGC_cabs/screens/ride_details_screen.dart';
import 'package:VGC_cabs/screens/payment_screen.dart';
import 'package:VGC_cabs/screens/notification_screen.dart';
import 'package:VGC_cabs/screens/settings_screen.dart';

class Routes {
  static const String home = '/';
  static const String search = '/search';
  static const String booking = '/booking';
  static const String profile = '/profile';
  static const String rideDetails = '/ride-details';
  static const String payment = '/payment';
  static const String notification = '/notification';
  static const String settings = '/settings';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case search:
        return MaterialPageRoute(builder: (_) => SearchScreen());
      case booking:
        return MaterialPageRoute(builder: (_) => BookingScreen());
      case profile:
        return MaterialPageRoute(builder: (_) => ProfileScreen());
      case rideDetails:
        return MaterialPageRoute(builder: (_) => RideDetailsScreen());
      case payment:
        return MaterialPageRoute(builder: (_) => PaymentScreen());
      case notification:
        return MaterialPageRoute(builder: (_) => NotificationScreen());
      case settings:
        return MaterialPageRoute(builder: (_) => SettingsScreen());
      default:
        return MaterialPageRoute(builder: (_) => HomeScreen());
    }
  }
}