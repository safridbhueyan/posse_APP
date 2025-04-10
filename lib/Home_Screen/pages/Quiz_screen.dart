import 'package:flutter/material.dart';

class QuizeScreen extends StatefulWidget {
  const QuizeScreen({super.key});

  @override
  State<QuizeScreen> createState() => _QuizeScreenState();
}

class _QuizeScreenState extends State<QuizeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz"),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Color(0xFFF4F8ED),
    );
  }
}