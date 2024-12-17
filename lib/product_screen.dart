import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  final String productName;
  const ProductScreen({super.key, required this.productName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Screen"),
      ),
      body: Center(
        child: Text("Product name ${productName}",style: TextStyle(fontSize: 25),),
      ),
    );
  }
}
