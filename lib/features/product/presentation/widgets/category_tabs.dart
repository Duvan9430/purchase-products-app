import 'package:flutter/material.dart';

class CategoryTabs extends StatelessWidget {
  const CategoryTabs({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(width: 4),
          ...['Tiendas', 'Indumentaria', 'Moda', 'Zapatillas']
              .map((s) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: Chip(
                      backgroundColor: Color(0xFF0D2433),
                      label: Text(s, style: TextStyle(color: Colors.white70)),
                    ),
                  ))
              .toList(),
        ],
      ),
    );
  }
}
