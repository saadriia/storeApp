import 'package:flutter/material.dart';

import '../../../models/product_model.dart';

class ItemsDetails extends StatelessWidget {
  final Product product;
  const ItemsDetails({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
                crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(
          product.title,
          style:   const TextStyle(
            fontWeight: FontWeight.w800,
             fontSize: 25),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(
          "\$${product.price}",
          style:    const TextStyle(
            fontWeight: FontWeight.w800,
             fontSize: 25),
        ),
//SizedBox(height: 10,)


        ],)
      ],
    );
  }
}
