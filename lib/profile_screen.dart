import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_tutorial/app_router/app_routing.dart';

class ProfileScreen extends StatelessWidget {
  final int userId;
  final String userName;
  const ProfileScreen({super.key, required this.userId, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile"),
      leading: GestureDetector(
          onTap: (){
            context.goNamed("home");
          },
          child: Icon(Icons.arrow_back)),
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Profile Screen",style: TextStyle(fontSize: 25),),
          Text(" id: $userId name: $userName",style: TextStyle(fontSize: 25),),
        ],
      ),),
    );

  }
}
