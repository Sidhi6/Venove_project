import 'package:flutter/material.dart';

class RouteDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Route Details")),
      body: Stack(
        children: [
          // Hardcoded Map Image
          Positioned.fill(
            child: Image.asset(
              'assets/static_route_map.png', 
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Start: San Francisco"),
                    Text("Stop: Oakland"),
                    Text("Total Distance: 15 KMs"),
                    Text("Duration: 35 mins"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
