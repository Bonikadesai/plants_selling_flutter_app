import 'package:flutter/material.dart';

class Gardening_Screen extends StatefulWidget {
  const Gardening_Screen({super.key});

  @override
  State<Gardening_Screen> createState() => _Gardening_ScreenState();
}

class _Gardening_ScreenState extends State<Gardening_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gardening"),
      ),
    );
  }
}
