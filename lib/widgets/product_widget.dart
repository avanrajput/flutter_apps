import 'package:flutter/material.dart';
import 'package:myntra_clone/data/products.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 4,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(product.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            product.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          Text(
            product.category,
            style: TextStyle(fontSize: 12, color: Colors.grey[600]),
          ),
          RichText(
            text: TextSpan(
              text: '₹${product.price.toInt()} ',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 13.0,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: '₹${product.priceBeforeDiscount.toInt()}',
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 11.0,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ),
          ),
          Text(
            '${product.discountPercent.toInt()}% OFF',
            style: const TextStyle(color: Colors.red, fontSize: 11),
          ),
        ],
      ),
    );
  }
}
