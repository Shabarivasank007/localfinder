import 'package:flutter/material.dart';
import 'vendor_model.dart';
import 'vendor_page.dart';

class VendorForm extends StatefulWidget {
  const VendorForm({Key? key}) : super(key: key);

  @override
  _VendorFormState createState() => _VendorFormState();
}

class _VendorFormState extends State<VendorForm> {
  final nameController = TextEditingController();
  final ownerController = TextEditingController();
  final categoryController = TextEditingController();
  final phoneController = TextEditingController();
  final descriptionController = TextEditingController();
  final latitudeController = TextEditingController();
  final longitudeController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    ownerController.dispose();
    categoryController.dispose();
    phoneController.dispose();
    descriptionController.dispose();
    latitudeController.dispose();
    longitudeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Vendor Form")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: "Vendor Name"),
            ),
            TextField(
              controller: ownerController,
              decoration: const InputDecoration(labelText: "Owner Name"),
            ),
            TextField(
              controller: categoryController,
              decoration: const InputDecoration(labelText: "Category"),
            ),
            TextField(
              controller: phoneController,
              decoration: const InputDecoration(labelText: "Phone Number"),
              keyboardType: TextInputType.phone,
            ),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(labelText: "Description"),
              maxLines: 2,
            ),
            TextField(
              controller: latitudeController,
              decoration: const InputDecoration(labelText: "Latitude"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: longitudeController,
              decoration: const InputDecoration(labelText: "Longitude"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text("Submit"),
              onPressed: () {
                final vendor = Vendor(
                  name: nameController.text,
                  owner: ownerController.text,
                  category: categoryController.text,
                  phone: phoneController.text,
                  description: descriptionController.text,
                  latitude: double.tryParse(latitudeController.text) ?? 0.0,
                  longitude: double.tryParse(longitudeController.text) ?? 0.0,
                );
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VendorPage(vendor: vendor),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
