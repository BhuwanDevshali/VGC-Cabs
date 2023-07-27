import 'package:flutter/material.dart';
import 'package:VGC_cabs/lib/models/ride.dart';

class RideCard extends StatelessWidget {
  final Ride ride;

  RideCard({required this.ride});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          leading: Container(
            padding: EdgeInsets.only(right: 12.0),
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(width: 1.0, color: Colors.grey),
              ),
            ),
            child: Icon(
              Icons.directions_car,
              color: Colors.black,
            ),
          ),
          title: Text(
            ride.title,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 5.0),
              Text(
                ride.from,
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 5.0),
              Text(
                ride.to,
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 5.0),
              Text(
                ride.date,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.grey,
            size: 30.0,
          ),
          onTap: () {
            // Handle ride card tap
          },
        ),
      ),
    );
  }
}