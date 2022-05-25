import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/product.dart';
import 'product_items.dart';
import '../provider/provider.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ProductProvider = Provider.of<ProductsProvider>(context);
    final Product = ProductProvider.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: Product.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return ProductItem(
            Product[index].id, Product[index].title, Product[index].imageUrl);
      },
    );
  }
}
