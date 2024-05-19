import 'package:flutter/material.dart';

class MenuBarHB extends StatelessWidget {
  const MenuBarHB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: Text('View Profile'),
            onTap: () {
              // Update the UI based on the selection.
            },
          ),
          ListTile(
            title: Text('Booking History'),
            onTap: () {
              // Update the UI based on the selection.
            },
          ),
          ListTile(
            title: Text('Settings'),
            onTap: () {
              // Update the UI based on the selection.
            },
          ),
        ],
      ),
    );
  }
}
