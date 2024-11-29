import 'package:flutter/material.dart';

class CurrentLocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Current Location"), // Heading
        backgroundColor: Colors.purple,
      ),
      body: Stack(
        children: [

          Positioned.fill(
            child: Image.asset(
              'assets/images/static_map.png', // Path to your static map
              fit: BoxFit.cover,
            ),
          ),

          Center(
            child: Container(
              color: Colors.white.withOpacity(0.7),
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Text(
                "Current Location",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
