import 'package:flutter/material.dart';

class VibecheckScreen extends StatelessWidget {
  const VibecheckScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vibe check"),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Color(0xFFF4F8ED),
    );
  }
}