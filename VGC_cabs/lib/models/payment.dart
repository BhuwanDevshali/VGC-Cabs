import 'package:flutter/material.dart';

class Payment {
  final String id;
  final String rideId;
  final String userId;
  final double amount;
  final DateTime timestamp;

  Payment({
    @required this.id,
    @required this.rideId,
    @required this.userId,
    @required this.amount,
    @required this.timestamp,
  });

  factory Payment.fromJson(Map<String, dynamic> json) {
    return Payment(
      id: json['id'],
      rideId: json['rideId'],
      userId: json['userId'],
      amount: json['amount'],
      timestamp: DateTime.parse(json['timestamp']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'rideId': rideId,
      'userId': userId,
      'amount': amount,
      'timestamp': timestamp.toIso8601String(),
    };
  }
}