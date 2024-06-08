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
      children: [
        Text(
          product.title,
          style:   TextStyle(
            fontWeight: FontWeight.w800,
             fontSize: 25),
        ),
      ],
    );
  }
}
