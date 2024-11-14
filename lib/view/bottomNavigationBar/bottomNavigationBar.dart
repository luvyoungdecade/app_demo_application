import 'package:app_demo_application/view/bottomNavigationBar/homeScreen.dart';
import 'package:app_demo_application/view/bottomNavigationBar/profileScreen.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int index = 0; // Index to track the selected screen

  // List of screens for the Bottom Navigation Bar
  List<Widget> selectedScreen = [homeScreen(), profileScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar Example'),
      ),
      body: selectedScreen[index], // Show selected screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index, // Set the current selected index
        onTap: (newIndex) {
          setState(() {
            index = newIndex; // Update index when a tab is tapped
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
