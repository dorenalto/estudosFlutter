import 'package:ecommerce/widgets/product/product-item.widget.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  final Axis direction;
  ProductList({@required this.direction});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: direction,
        children: [
          ProductItem(
            title: 'Nike Dry-Fit Long Sleeve',
            description: 'Nike',
            price: '150',
            image: 'assets/product-10.png',
            descriptionText:
                'Nike Dry-Fit is a polyester fabric is designed to help you to keep dry so you can more confortably work harder, longer.',
          ),
          ProductItem(
            title: 'BeoPlay Speaker',
            description: 'Bang and Olufsen',
            price: '755',
            image: 'assets/product-1.png',
            descriptionText:
                'One-point music system and contemporary design icon with powerful sound and customisable design.',
          ),
          ProductItem(
            title: 'Leather Wristwatch',
            description: 'Tag Heuer',
            price: '450',
            image: 'assets/product-2.png',
            descriptionText:
                'COMFORTABLE WEAR - For other products watch belt is too short, we have increased the length of the watch band to further enhance the wearing comfort.',
          ),
          ProductItem(
            title: 'Smart Bluetooth Speaker',
            description: 'Smart Inc.',
            price: '755',
            image: 'assets/product-3.png',
            descriptionText:
                'Outstandingly good sonics from a beautifully crafted portable package – and with superb battery life, too.',
          ),
        ],
      ),
    );
  }
}
