

import 'package:flutter/material.dart';

class Abcd extends StatefulWidget {
  const Abcd({Key? key}) : super(key: key);

  @override
  _AbcdState createState() => _AbcdState();
}

class _AbcdState extends State<Abcd> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('swikriti Adhikari'),
            accountEmail: Text('sshushri1@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('images/img1.jpg'),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.dashboard),
            title: Text('Dashboard'),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.person),
            title: Text('person'),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.help),
            title: Text('Help'),
          ),
        ],
      ),
    );
  }
}
