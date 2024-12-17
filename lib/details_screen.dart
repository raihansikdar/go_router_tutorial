import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final int productId;
  final String productName;
  final double price;
  const DetailsScreen({super.key, required this.productId, required this.productName, required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Product id $productId",style: const TextStyle(fontSize: 25),),
            Text("Product name $productName",style: const TextStyle(fontSize: 25),),
            Text("Product price $price",style: const TextStyle(fontSize: 25),),
          ],
        ),
      ),
    );
  }
}
