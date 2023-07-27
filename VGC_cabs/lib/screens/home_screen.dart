import 'package:flutter/material.dart';
import 'package:VGC_cabs/lib/models/user.dart';
import 'package:VGC_cabs/lib/utils/api.dart';
import 'package:VGC_cabs/lib/utils/constants.dart';
import 'package:VGC_cabs/lib/widgets/ride_card.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Ride> rides = [];

  @override
  void initState() {
    super.initState();
    fetchRides();
  }

  void fetchRides() async {
    try {
      List<Ride> fetchedRides = await Api.getRides();
      setState(() {
        rides = fetchedRides;
      });
    } catch (e) {
      print('Error fetching rides: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VGC Cabs'),
      ),
      body: ListView.builder(
        itemCount: rides.length,
        itemBuilder: (context, index) {
          return RideCard(ride: rides[index]);
        },
      ),
    );
  }
}