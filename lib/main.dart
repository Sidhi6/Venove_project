import 'package:flutter/material.dart';
import 'screens/dashboard_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vinove_attandance',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: DashboardScreen(),
    );
  }
}
