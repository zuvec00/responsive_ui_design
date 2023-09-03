import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Drawer(
            backgroundColor: Colors.grey[300],
            child: Column(
              children: const [
                DrawerHeader(
                  child: Icon(Icons.favorite_rounded),
                ),
                ListTile(
                  leading: Icon(Icons.home_rounded),
                  title: Text('D A S H B O A R D'),
                ),
                ListTile(
                  leading: Icon(Icons.chat_rounded),
                  title: Text('M E S S A G E'),
                ),
                ListTile(
                  leading: Icon(Icons.settings_rounded),
                  title: Text('S E T T I N G S'),
                ),
                ListTile(
                  leading: Icon(Icons.logout_rounded),
                  title: Text('L O G O U T'),
                ),
              ],
            ));
  }
}