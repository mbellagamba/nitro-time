import 'package:flutter/material.dart';
import 'package:nitro_time/widgets/main_content.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int _currentIndex;
  final Map<int, String> _titles = Map.fromEntries([
    MapEntry<int, String>(0, 'First'),
    MapEntry(1, 'Second'),
    MapEntry(2, 'Third'),
  ]);

  _currentScreen() {
    final title = _titles[_currentIndex];
    return MainContent(title);
  }

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentScreen(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        selectedItemColor: Colors.teal,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.timer),
            title: Text('Today'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text('History'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text('Explore'),
          ),
        ],
      ),
    );
  }
}
