import 'package:flutter/material.dart';
import 'member_location_screen.dart';

class AttendanceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Attendance"),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
        itemCount: 7, // Number of members
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text("M${index + 1}"),
            ),
            title: Text("Member ${index + 1}"),
            subtitle: Text("09:30 AM - Working"),
            trailing: IconButton(
              icon: Icon(Icons.location_on, color: Colors.red),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MemberLocationScreen(),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
