import 'package:flutter/material.dart';
import 'package:VGC_cabs/lib/models/payment.dart';

class PaymentCard extends StatelessWidget {
  final Payment payment;

  PaymentCard({required this.payment});

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
          leading: Icon(Icons.payment),
          title: Text(
            payment.title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 5.0),
              Text(
                payment.date,
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 5.0),
              Text(
                payment.amount,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            // Handle payment card tap
          },
        ),
      ),
    );
  }
}