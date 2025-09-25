import 'package:flutter/material.dart';

class HeaderBanner extends StatelessWidget {
  const HeaderBanner({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF083344), Color(0xFF0EA5E9)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 18,
            top: 18,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('PANTALONES', style: TextStyle(fontSize: 12, color: Colors.white70)),
                SizedBox(height: 6),
                Text('Nueva Colección', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(height: 6),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  ),
                  child: Text('Ver Productos', style: TextStyle(color: Colors.black87)),
                )
              ],
            ),
          ),
          Positioned(
            right: -20,
            bottom: -10,
            child: Transform.rotate(
              angle: -0.15,
              child: Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white24,
                ),
                child: Center(child: Icon(Icons.directions_run, size: 70, color: Colors.white30)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
