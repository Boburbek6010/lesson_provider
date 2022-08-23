import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  static const id = "/history_page";
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("History"),
      ),
    );
  }
}
