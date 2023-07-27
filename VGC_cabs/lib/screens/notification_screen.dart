import 'package:flutter/material.dart';
import 'package:VGC_cabs/models/notification.dart';
import 'package:VGC_cabs/widgets/notification_card.dart';

class NotificationScreen extends StatelessWidget {
  final List<Notification> notifications = [
    Notification(
      title: 'Ride Request',
      message: 'John Doe has requested a ride',
      time: '10:30 AM',
    ),
    Notification(
      title: 'Ride Accepted',
      message: 'Your ride request has been accepted',
      time: '11:45 AM',
    ),
    Notification(
      title: 'Ride Completed',
      message: 'Your ride has been completed',
      time: '02:15 PM',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return NotificationCard(
            notification: notifications[index],
          );
        },
      ),
    );
  }
}