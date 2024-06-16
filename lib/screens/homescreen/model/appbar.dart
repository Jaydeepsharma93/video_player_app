import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    toolbarHeight: 80,
    title: Container(
      height: 40,
      width: 350,
      decoration: BoxDecoration(
          color: Colors.grey.shade300, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            Icon(Icons.search, size: 28),
            Spacer(),
            Text(
              'Search or enter url',
              style: TextStyle(fontSize: 15, color: Colors.grey.shade700),
            ),
            Spacer(
              flex: 6,
            )
          ],
        ),
      ),
    ),
    actions: [
      Icon(
        Icons.app_registration,
        size: 28,
      ),
      SizedBox(width: 10),
      Icon(
        Icons.download,
        size: 28,
      ),
      SizedBox(width: 15)
    ],
    shadowColor: Colors.black,
    elevation: 2,
  );
}
