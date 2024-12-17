import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        backgroundColor: Colors.blue,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(" This is Home Screen",
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(onPressed: (){
             context.push("/product");
            }, child: const Text("Go to Product"))
          ],
        ),
      ),
    );
  }
}
