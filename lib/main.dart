import 'package:flutter/material.dart';
import 'package:splitwise/appbar.dart';
import 'package:splitwise/pages/account.dart';
import 'package:splitwise/pages/activity.dart';
import 'package:splitwise/pages/friends.dart';
import 'package:splitwise/pages/groups.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _navigateTabs(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    Friends(),
    Groups(),
    Activity(),
    AccountDetails()
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Appbar(),
          ),
          body: _pages[_selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _navigateTabs,
            // selectedIconTheme: IconThemeData(color: Colors.blueAccent),
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Friends'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.people), label: 'Groups'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.local_activity), label: 'Activity'),
              BottomNavigationBarItem(
                  icon: CircleAvatar(
                      radius: 14,
                      backgroundImage:
                          AssetImage('assets/images/DSC05323.jpeg')),
                  label: 'Account')
            ],
          ),
        ),
      ),
    );
  }
}
