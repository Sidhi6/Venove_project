import 'package:flutter/material.dart';

class MemberLocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Track Live Location")),
      body: Stack(
        children: [
          // Hardcoded Map Image
          Positioned.fill(
            child: Image.asset(
              'assets/static_map.png', // Replace with your map image file
              fit: BoxFit.cover,
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.3,
            minChildSize: 0.2,
            maxChildSize: 0.8,
            builder: (context, scrollController) {
              return Container(
                color: Colors.white,
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: 10, // Example data count
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("Visited Location $index"),
                      subtitle: Text("Time: ${index + 9}:00 AM"),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
