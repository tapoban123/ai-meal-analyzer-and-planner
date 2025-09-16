import 'package:flutter/material.dart';

class HistoryAndAnalyticsScreen extends StatelessWidget {
  const HistoryAndAnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("History & Analytics"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.delete_forever, color: Colors.red),
          ),
        ],
      ),
      body: Center(child: Text("History And Analytics Screen")),
    );
  }
}
