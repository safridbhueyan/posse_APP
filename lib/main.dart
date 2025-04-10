import 'package:flutter/material.dart';
import 'package:posse/Home_Screen/parents_screen_provider.dart';
import 'package:provider/provider.dart';
import 'package:posse/Home_Screen/parents_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ParentsScreenProvider()),
     

      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: ParentsScreen(),
      ),
    );
  }
}
