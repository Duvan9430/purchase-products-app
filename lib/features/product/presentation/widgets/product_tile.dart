import 'package:flutter/material.dart';
import 'package:market_place_v1/config/config.dart';


class ProductTile extends StatelessWidget {
  final Product product;
  const ProductTile({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              child: Container(
                color: Colors.white12,
                child: Center(child: Icon(Icons.directions_run, size: 48, color: Colors.white30)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.title, style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 6),
                Text('\$${product.price.toStringAsFixed(0)}', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          )
        ],
      ),
    );
  }
}