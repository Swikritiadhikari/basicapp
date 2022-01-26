

import 'package:flutter/material.dart';
import 'package:shareapp/drawer.dart';

class Grapes extends StatefulWidget {
  const Grapes({Key? key}) : super(key: key);

  @override
  _GrapesState createState() => _GrapesState();
}

class _GrapesState extends State<Grapes> {
  int _currentIndex = 0;
  List<Widget> body = const [
    Icon(Icons.home),
    Icon(Icons.menu),
    Icon(Icons.person),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.star),
          ),
        ],
        title: Center(
          child: Text('Meroapp'),
        ),
      ),
      drawer: Abcd(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text('This is our app'),
              Divider(),
              Card(
                child: Image.network('https://cdn.pixabay.com/photo/2017/03/14/17/24/women-2143800__340.jpg'),
              ),
              body[_currentIndex],
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),

          BottomNavigationBarItem(
            label: 'Menu',
            icon: Icon(Icons.menu),
          ),

          BottomNavigationBarItem(
            label: 'person',
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
