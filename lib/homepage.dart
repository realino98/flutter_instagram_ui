import 'package:flutter/material.dart';
import 'package:social_media/pages/accounts.dart';
import 'package:social_media/pages/userhome.dart';
import 'package:social_media/pages/usersearch.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _bodyPage = [
    UserHome(),
    const UserSearch(),
    const Center(child: Text("Add")),
    const Center(child: Text("Reels")),
    AccountPage(
      name: "bernard.realino",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyPage[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: "Reels"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
