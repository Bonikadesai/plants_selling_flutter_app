import 'package:flutter/material.dart';

class Plants_Screen extends StatefulWidget {
  const Plants_Screen({super.key});

  @override
  State<Plants_Screen> createState() => _Plants_ScreenState();
}

class _Plants_ScreenState extends State<Plants_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Plant"),
      ),
    );
  }
}
