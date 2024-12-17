import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final String productName;
  const CartScreen({super.key, required this.productName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Cart Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Cart Screen",style: const TextStyle(fontSize: 25),),
            Text("Product name: $productName",style: const TextStyle(fontSize: 25),),

          ],
        ),
      ),
    );
  }
}
