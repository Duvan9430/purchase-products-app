import 'package:flutter/material.dart';


class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        Text('Ver todo', style: TextStyle(color: Colors.white54, fontSize: 12)),
      ],
    );
  }
}