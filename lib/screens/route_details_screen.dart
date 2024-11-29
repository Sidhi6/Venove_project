import 'package:flutter/material.dart';

class RouteDetailsScreen extends StatelessWidget {
  final String startLocation;
  final String endLocation;
  final String distance;
  final String duration;

  RouteDetailsScreen({
    required this.startLocation,
    required this.endLocation,
    required this.distance,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Route")),
      body: Stack(
        children: [
          // Hardcoded Map Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/new_route.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 130,
            left: 0,
            right: 140,
            child: Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.6, // 80% of screen width
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Start: $startLocation",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Stop: $endLocation",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Total Distance: $distance",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Duration: $duration",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
