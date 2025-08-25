import 'package:flutter/material.dart';
import 'vendor_model.dart';

class VendorPage extends StatelessWidget {
  final Vendor vendor;

  const VendorPage({Key? key, required this.vendor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Vendor Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name: ${vendor.name}", style: TextStyle(fontSize: 18)),
            Text("Owner: ${vendor.owner}", style: TextStyle(fontSize: 18)),
            Text("Category: ${vendor.category}",
                style: TextStyle(fontSize: 18)),
            Text("Phone: ${vendor.phone}", style: TextStyle(fontSize: 18)),
            Text("Description: ${vendor.description}",
                style: TextStyle(fontSize: 18)),
            Text("Latitude: ${vendor.latitude}",
                style: TextStyle(fontSize: 18)),
            Text("Longitude: ${vendor.longitude}",
                style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
