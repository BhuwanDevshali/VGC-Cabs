import 'package:flutter/material.dart';

class Ride {
  final String id;
  final String from;
  final String to;
  final String date;
  final String time;
  final int seatsAvailable;
  final double price;
  final String driverName;
  final String driverProfilePic;
  final String carModel;
  final String carNumber;

  Ride({
    @required this.id,
    @required this.from,
    @required this.to,
    @required this.date,
    @required this.time,
    @required this.seatsAvailable,
    @required this.price,
    @required this.driverName,
    @required this.driverProfilePic,
    @required this.carModel,
    @required this.carNumber,
  });
}