import 'package:flutter/material.dart';
import 'route_details_screen.dart';

class MemberLocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Track Live Location"),
      ),
      body: Stack(
        children: [
          // Hardcoded Map Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/static_map.png',
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
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.circle,
                            size: 12,
                            color: Colors.purple,
                          ),
                          if (index < 9)
                            Container(
                              width: 2,
                              height: 20,
                              color: Colors.purple,
                            ),
                        ],
                      ),
                      title: Text("Visited Location $index"),
                      subtitle: Text("Time: ${index + 9}:00 AM"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RouteDetailsScreen(
                              startLocation: "Location $index",
                              endLocation: "Location ${index + 1}",
                              distance: "${index * 2} KM",
                              duration: "${index * 5} mins",
                            ),
                          ),
                        );
                      },
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
