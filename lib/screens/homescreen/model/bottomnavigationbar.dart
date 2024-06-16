import 'package:flutter/material.dart';

BottomNavigationBar buildBottomNavigationBar() {
  return BottomNavigationBar(
    currentIndex: 0,
    onTap: (value) {},
    showSelectedLabels: true,
    items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.file_download_outlined),
        label: 'My Files',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'Setting',
      ),
    ],
  );
}