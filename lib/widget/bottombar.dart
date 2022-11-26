import 'package:flutter/material.dart';

class BottombarWidget extends StatelessWidget {
  const BottombarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: BottomNavigationBar(
        selectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 30,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: 'home'),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              label: 'Reels'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/reel.png',
                width: 25,
                height: 25,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/shop.png',
                width: 30,
                height: 30,
              ),
              label: ''),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundImage: AssetImage('assets/ben.png'),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
