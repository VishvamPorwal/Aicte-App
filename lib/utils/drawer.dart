import 'package:flutter/material.dart';

import '../pages/home.dart';
import '../pages/statistics.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Text('AICTE'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Statistics'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => StatisticsPage()));
            
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Institutions'),
            onTap: () {
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Bulletins'),
            onTap: () {
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Gallery'),
            onTap: () {
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('About Us'),
            onTap: () {
            },
          ),
        ],
      ),
    );
  }
}
