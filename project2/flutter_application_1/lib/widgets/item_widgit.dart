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
        onTap: (){
          print("${item.name} pressed");
        },
        leading: Image.network(item.image), // Load image from URL
        title: Text(item.name),
        subtitle: Text(item.desc),
        
        trailing: Text("\$${item.price}",
        textScaleFactor: 1.5,
        style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold)
        ),

      ),
    );
  }
}
