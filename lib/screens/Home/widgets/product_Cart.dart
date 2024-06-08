import 'package:flutter/material.dart';
import 'package:shopiphy/models/product_model.dart';
import 'package:shopiphy/screens/Details/details_screen.dart';
import 'package:shopiphy/screens/constants.dart';

class ProductCart extends StatelessWidget {
  final Product product;
  const ProductCart({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(
              product: product,
            ),
          ),
        );
      },
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
                child: Padding(
                  padding: const EdgeInsets.only(bottom:BorderSide.strokeAlignInside),
                  child: Image.asset(
                    product.image,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Spacer(flex:3 ),
              //  const SizedBox(
              //    height: 10,

              //  ),
              Padding(
                  padding: const EdgeInsets.only(left: 80, top: 16),
                  child: Row(
                    children: [
                      Text(
                        "\$${product.price}",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ]),
    );
  }
}
