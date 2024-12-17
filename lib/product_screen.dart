import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductScreen extends StatelessWidget {
  final String productName;
  const ProductScreen({super.key, required this.productName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Product Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Product name $productName",style: const TextStyle(fontSize: 25),),
            ElevatedButton(onPressed: (){
              context.push("/details/1001/$productName/1200.00");
            }, child: const Text("Go to details")),
          ElevatedButton(onPressed: (){
            context.push("/product/$productName/cart");
          }, child: Text("go to cart screen"))
          ],
        ),
      ),
    );
  }
}
