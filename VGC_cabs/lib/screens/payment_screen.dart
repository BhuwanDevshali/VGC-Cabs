import 'package:flutter/material.dart';
import 'package:VGC_cabs/models/payment.dart';
import 'package:VGC_cabs/utils/api.dart';
import 'package:VGC_cabs/utils/constants.dart';
import 'package:VGC_cabs/widgets/payment_card.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  List<Payment> _payments = [];

  @override
  void initState() {
    super.initState();
    _fetchPayments();
  }

  void _fetchPayments() async {
    try {
      List<Payment> payments = await API.getPayments();
      setState(() {
        _payments = payments;
      });
    } catch (e) {
      print('Error fetching payments: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payments'),
      ),
      body: ListView.builder(
        itemCount: _payments.length,
        itemBuilder: (context, index) {
          return PaymentCard(payment: _payments[index]);
        },
      ),
    );
  }
}