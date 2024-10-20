import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';

class ItemWidgit extends StatelessWidget {
  final Item item;

  const ItemWidgit({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.deepPurple.shade50,
      child: ListTile(
        onTap: () {
          // Show the popup dialog when item is clicked
          _showMobileDetails(context, item);
        },
        leading: Image.network(item.image), // Load image from URL
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.5,
          style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  // Function to show mobile details in a popup
  void _showMobileDetails(BuildContext context, Item item) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          contentPadding: const EdgeInsets.all(16.0),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Mobile Image
                Image.network(
                  item.image,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 16),

                // Mobile Description
                Text(
                  item.name,
                  style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(item.desc, textAlign: TextAlign.center),

                const SizedBox(height: 16),

                // Price
                Text(
                  "\$${item.price}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),
                const SizedBox(height: 20),

                // Buy Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the dialog when "Buy" is clicked
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  ),
                  child: const Text(
                    "Buy",
                    style: TextStyle(fontSize: 16,color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
