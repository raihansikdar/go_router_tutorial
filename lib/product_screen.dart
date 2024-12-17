import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_tutorial/app_router/app_routing.dart';

class ProductScreen extends StatelessWidget {
  final String productName;
  const ProductScreen({super.key, required this.productName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Product name ${productName}",style: TextStyle(fontSize: 25),),
            ElevatedButton(onPressed: (){
              context.push("/details/1001/$productName/1200.00");
            }, child: Text("Go to details"))
          ],
        ),
      ),
    );
  }
}
