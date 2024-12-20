import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final int id;
  final String name;
  const ProfileScreen({super.key, required this.name, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile Screen"),),
      body: Center(
        child: Text("data : $name $id"),
      ),
    );
  }
}
