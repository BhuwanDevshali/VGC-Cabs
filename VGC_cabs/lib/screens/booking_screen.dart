import 'package:flutter/material.dart';
import 'package:VGC_cabs/models/ride.dart';
import 'package:VGC_cabs/widgets/ride_card.dart';

class BookingScreen extends StatefulWidget {
  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  List<Ride> _rides = [
    Ride(
      id: '1',
      from: 'New York',
      to: 'Los Angeles',
      date: DateTime.now(),
      price: 100,
    ),
    Ride(
      id: '2',
      from: 'San Francisco',
      to: 'Las Vegas',
      date: DateTime.now(),
      price: 80,
    ),
    Ride(
      id: '3',
      from: 'Chicago',
      to: 'Miami',
      date: DateTime.now(),
      price: 120,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking'),
      ),
      body: ListView.builder(
        itemCount: _rides.length,
        itemBuilder: (ctx, index) {
          return RideCard(
            ride: _rides[index],
            onPressed: () {
              // Handle ride selection
            },
          );
        },
      ),
    );
  }
}