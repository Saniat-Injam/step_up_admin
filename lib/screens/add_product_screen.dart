import 'package:flutter/material.dart';
import 'package:step_up_admin/widgets/drop_down_button.dart';

class AddProductScreen extends StatelessWidget {
  const AddProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Product")),
      body: SingleChildScrollView(
        //controller: controller,
        child: Container(
          margin: EdgeInsets.all(10),
          width: double.maxFinite,
          child: Column(
            children: [
              Text(
                "Add New Product",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  label: Text("Product Name"),
                  hintText: "Enter Your Product Name",
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  label: Text("Product Description"),
                  hintText: "Enter Your Product Description",
                ),
                maxLines: 4,
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  label: Text("Image Url"),
                  hintText: "Enter Your Image Url",
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  label: Text("Product Price"),
                  hintText: "Enter your Product Price",
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Flexible(
                    child: DropDownButton(
                      items: ["Cate1", "Cate2", "Cate3"],
                      selectItemHint: "Category",
                      onSelected: (selectedValue) {
                        print(selectedValue);
                      },
                    ),
                  ),
                  Flexible(
                    child: DropDownButton(
                      items: ["Brand1", "Brand2", "Brand3"],
                      selectItemHint: 'Brand',
                      onSelected: (selectedValue) {
                        print(selectedValue);
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text("Offer Product ?"),
              SizedBox(height: 10),
              DropDownButton(
                items: ["True", "False"],
                selectItemHint: "Offer ?",
                onSelected: (selectedValue) {
                  print(selectedValue);
                },
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigoAccent,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {},
                child: Text("Add Product"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
