
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar();
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Color(0xFF071021),
      shape: CircularNotchedRectangle(),
      notchMargin: 6,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.home)),
                IconButton(onPressed: () {}, icon: Icon(Icons.chat_bubble_outline)),
              ],
            ),
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
                IconButton(onPressed: () {}, icon: Icon(Icons.person_outline)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
