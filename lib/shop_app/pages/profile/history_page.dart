import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  static const id = "/profile_page";
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Profile"),
      ),
    );
  }
}
