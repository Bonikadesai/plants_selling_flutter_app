import 'package:flutter/material.dart';

class User extends StatelessWidget {
  const User({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff41825F),
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Color(0xff41825F),
                child: Text(
                  "B",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 60,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Bonika Desai",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Color(0xff41825F),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(
                  Icons.person_2_outlined,
                  size: 30,
                  color: Color(0xff41825F),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Personal Information",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff41825F),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.settings,
                  size: 30,
                  color: Color(0xff41825F),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff41825F),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.notifications_active_outlined,
                  size: 30,
                  color: Color(0xff41825F),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Notifications",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff41825F),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.payment,
                  size: 30,
                  color: Color(0xff41825F),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Payments",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff41825F),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.info_outlined,
                  size: 30,
                  color: Color(0xff41825F),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Support",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff41825F),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.logout,
                  size: 30,
                  color: Color(0xff41825F),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Logout",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff41825F),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
