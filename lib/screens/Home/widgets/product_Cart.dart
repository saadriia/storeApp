import 'package:flutter/material.dart';
import 'package:shopiphy/models/product_model.dart';
import 'package:shopiphy/screens/constants.dart';

class ProductCart extends StatelessWidget {
    final Product product;
  const ProductCart({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: kcontentColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Image.asset(
                  product.image,
                  width: 150,
                  height: 210,
                  
                  fit: BoxFit.cover,
                ),
              ),
              // const SizedBox(
              //   height: 10,
                
              // ),
              const Padding(padding: EdgeInsets.only(left: 10),)
            ],
          ),
        ),
      ]),
    );
  }
}
