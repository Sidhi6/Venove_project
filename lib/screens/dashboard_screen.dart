import 'package:flutter/material.dart';
import 'attendance_screen.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WorkStatus Dashboard"),
        backgroundColor: Colors.purple,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Cameron Williamson"),
              accountEmail: Text("cameronwilliamson@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("CW", style: TextStyle(fontSize: 24)),
              ),
              decoration: BoxDecoration(color: Colors.purple),
            ),
            ListTile(
              leading: Icon(Icons.timer),
              title: Text("Timer"),
              onTap: () {}, // Add functionality if needed
            ),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text("Attendance"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AttendanceScreen(),
                  ),
                );
              },
            ),
            // Add more options like Activity, Timesheet, etc.
          ],
        ),
      ),
      body: Center(
        child: Text(
          "Welcome to the Dashboard",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
