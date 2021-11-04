import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom navigation bar',
      home: BottomNavigationBarExample(),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBarExample> {
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final _kTabPages = [
      const Center(
        child: Icon(
          Icons.cloud,
          size: 64,
          color: Colors.teal,
        ),
      ),
      const Center(
        child: Icon(
          Icons.alarm,
          size: 64,
          color: Colors.cyan,
        ),
      ),
      const Center(
        child: Icon(
          Icons.forum,
          size: 64,
          color: Colors.blue,
        ),
      )
    ];

    final _kBottomBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(icon: Icon(Icons.cloud), label: 'Tab1'),
      const BottomNavigationBarItem(icon: Icon(Icons.alarm), label: 'Tab2'),
      const BottomNavigationBarItem(icon: Icon(Icons.forum), label: 'Tab3'),
    ];

    final bottomNaBar = BottomNavigationBar(
      items: _kBottomBarItems,
      currentIndex: _currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentTabIndex = index;
        });
      },
    );

    return Scaffold(
      body: _kTabPages[_currentTabIndex],
      bottomNavigationBar: bottomNaBar,
    );
  }
}
