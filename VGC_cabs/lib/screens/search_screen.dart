import 'package:flutter/material.dart';
import 'package:VGC_cabs/lib/utils/constants.dart';
import 'package:VGC_cabs/lib/utils/network.dart';
import 'package:VGC_cabs/lib/widgets/ride_card.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Ride> rides = [];

  @override
  void initState() {
    super.initState();
    fetchRides();
  }

  void fetchRides() async {
    try {
      var response = await Network.get(Constants.apiEndpoint + '/rides');
      if (response.statusCode == 200) {
        setState(() {
          rides = Ride.listFromJson(response.data);
        });
      } else {
        print('Failed to fetch rides');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Rides'),
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