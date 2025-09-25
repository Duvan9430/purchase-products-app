import 'package:flutter/material.dart';
import 'package:market_place_v1/config/config.dart';


class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              child: Container(
                width: double.infinity,
                color: Colors.white10,
                child: Center(
                  child: Icon(Icons.directions_run, size: 48, color: Colors.white24),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.title, style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 4),
                Text(product.subtitle, style: TextStyle(fontSize: 12, color: Colors.white60)),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\$${product.price.toStringAsFixed(0)}', style: TextStyle(fontWeight: FontWeight.bold)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.add_shopping_cart_outlined))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
