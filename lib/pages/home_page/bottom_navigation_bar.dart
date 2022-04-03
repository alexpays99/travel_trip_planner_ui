import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class BottomNavigationBar extends StatefulWidget {
  const BottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
      selectedIndex: currentIndex,
      onItemSelected: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      items: [
        BottomNavyBarItem(
          icon: const Icon(Icons.home), 
          title: const Text('Home'),
          activeColor: Colors.redAccent,
          inactiveColor: Colors.redAccent,
        ),
        BottomNavyBarItem(
          icon: const Icon(Icons.notifications), 
          title: const Text('Notifications'),
          activeColor: Colors.redAccent,
          inactiveColor: Colors.redAccent,
        ),
        BottomNavyBarItem(
          icon: const Icon(Icons.favorite_outline_outlined), 
          title: const Text('Favourite'),
          activeColor: Colors.redAccent,
          inactiveColor: Colors.redAccent,
        ),
        BottomNavyBarItem(
          icon: const Icon(Icons.person),
          title: const Text('Profile'),
          activeColor: Colors.redAccent,
          inactiveColor: Colors.redAccent,
        ),
      ],
    );
  }
}