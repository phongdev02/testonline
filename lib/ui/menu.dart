import 'package:flutter/material.dart';
import 'package:flutter_ui/const.dart';

class MyMenu extends StatelessWidget {
  const MyMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Row(
        children: [
          Container(
            width: 230,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                container("Home", Icons.home, 16.0, false, true),
                container(
                    "Profile", Icons.supervisor_account_sharp, 16.0, false, false),
                container("Nearby", Icons.location_on, 16.0, false, false),
                Divider(
                  color: Colors.white, // Màu sắc của gạch ngang
                  thickness: 0.2, // Độ dày của gạch ngang
                  indent: 0, // Khoảng cách từ lề trái
                  endIndent: 0, // Khoảng cách từ lề phải
                ),
                container("Bookmark", Icons.bookmark, 16.0,false, false),
                container(
                    "Notification", Icons.notifications, 16.0, true, false),
                container("Messenger", Icons.messenger_sharp, 16.0, true, false),
                Divider(
                  color: Colors.white, // Màu sắc của gạch ngang
                  thickness: 0.2, // Độ dày của gạch ngang
                  indent: 0, // Khoảng cách từ lề trái
                  endIndent: 0, // Khoảng cách từ lề phải
                ),
                container("Settings", Icons.settings, 16.0, false, false),
                container(
                    "Help", Icons.help, 16.0, false, false),
                container("Logout", Icons.logout_rounded, 16.0, false, false),
              ],
            ),
          )
        ],
      ),
    );
  }
}
