import 'package:flutter/material.dart';

class PollScreen extends StatelessWidget {
  const PollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("POll SCreen"),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Color(0xFFF4F8ED),
    );
  }
}