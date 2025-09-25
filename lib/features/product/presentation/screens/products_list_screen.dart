import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:market_place_v1/config/models/product.dart';
import 'package:market_place_v1/features/product/presentation/widgets/widgets.dart';
import 'package:market_place_v1/features/shared/widgets/widgets.dart';

class ProductsListScreen extends StatelessWidget {
  const ProductsListScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final List<Product> products = List.generate(
      6,
      (i) => Product(
        id: i,
        title: i.isEven ? 'Nike Vaporfly' : 'Nike Air Max',
        subtitle: 'Zapatillas deportivas',
        price: 120.0 + i * 10,
        imageUrl: null,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Tienda'),
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderBanner(),
              SizedBox(height: 16),
              CategoryTabs(),
              SizedBox(height: 12),
              Text('Más vendidos', style: theme.textTheme.titleMedium),
              SizedBox(height: 12),
              SizedBox(
                height: 220,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  separatorBuilder: (_, __) => SizedBox(width: 12),
                  itemBuilder: (context, index) {
                    return ProductCard(product: products[index]);
                  },
                ),
              ),
              SizedBox(height: 18),
              SectionTitle(title: 'Categorías'),
              SizedBox(height: 12),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  'Todo',
                  'Zapatillas',
                  'Hombres',
                  'Mujer',
                  'Indumentaria'
                ].map((s) => CategoryPill(label: s)).toList(),
              ),
              SizedBox(height: 22),
              SectionTitle(title: 'Recomendados para ti'),
              SizedBox(height: 12),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.78,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return ProductTile(product: products[index]);
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.shopping_cart),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
