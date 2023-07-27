import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:VGC_cabs/lib/models/user.dart';
import 'package:VGC_cabs/lib/models/ride.dart';
import 'package:VGC_cabs/lib/models/payment.dart';
import 'package:VGC_cabs/lib/utils/constants.dart';

class Api {
  static Future<User> getUserDetails(String userId) async {
    final response = await http.get('${Constants.apiUrl}/users/$userId');
    if (response.statusCode == 200) {
      return User.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load user details');
    }
  }

  static Future<List<Ride>> getRides() async {
    final response = await http.get('${Constants.apiUrl}/rides');
    if (response.statusCode == 200) {
      List<dynamic> ridesJson = json.decode(response.body);
      return ridesJson.map((rideJson) => Ride.fromJson(rideJson)).toList();
    } else {
      throw Exception('Failed to load rides');
    }
  }

  static Future<Ride> getRideDetails(String rideId) async {
    final response = await http.get('${Constants.apiUrl}/rides/$rideId');
    if (response.statusCode == 200) {
      return Ride.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load ride details');
    }
  }

  static Future<Payment> makePayment(Payment payment) async {
    final response = await http.post(
      '${Constants.apiUrl}/payments',
      headers: {'Content-Type': 'application/json'},
      body: json.encode(payment.toJson()),
    );
    if (response.statusCode == 201) {
      return Payment.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to make payment');
    }
  }
}