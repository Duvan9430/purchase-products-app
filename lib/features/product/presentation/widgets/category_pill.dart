import 'package:flutter/material.dart';


class CategoryPill extends StatelessWidget {
  final String label;
  const CategoryPill({required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Color(0xFF142633),
      label: Text(label, style: TextStyle(color: Colors.white70)),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    );
  }
}