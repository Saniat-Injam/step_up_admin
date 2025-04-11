import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:step_up_admin/screens/add_product_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("StepUp Admin")),
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Title"),
            subtitle: Text("Price: 100"),
            trailing: IconButton(icon: Icon(Icons.delete), onPressed: () {}),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(AddProductScreen());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
