import 'package:flutter/material.dart';

class Seeds_Screen extends StatefulWidget {
  const Seeds_Screen({super.key});

  @override
  State<Seeds_Screen> createState() => _Seeds_ScreenState();
}

class _Seeds_ScreenState extends State<Seeds_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Seed"),
      ),
    );
  }
}
