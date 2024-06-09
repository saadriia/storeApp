import 'package:flutter/material.dart';
import 'package:shopiphy/models/product_model.dart';
import 'package:shopiphy/screens/Details/details_screen.dart';
import 'package:shopiphy/screens/constants.dart';

class ProductCart extends StatefulWidget {
  final Product product;
  const ProductCart({super.key, required this.product});

  @override
  State<ProductCart> createState() => _ProductCartState();
}

class _ProductCartState extends State<ProductCart> {
//  bool isMobile(BuildContext context) => MediaQuery.of(context).size.width<600 ;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
        double screenHight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(
              product: widget.product,
            ),
          ),
        );
      },
      child: Stack(children: [
        //if (isMobile(context))
        Container(
          // height: screenHight,
          // width: screenWidth,
      //    width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: kcontentColor,
          ),
          child: Column(
          
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
              Center(
                
                child: Image.asset(
                  
                  widget.product.image,
                  width:screenWidth*0.25,
                  height: 144,
                  
                  fit: BoxFit.cover,
                ),
              ),
              // Spacer(flex:3 ),
              //  const SizedBox(
              //    height: 10,

              //  ),
              Padding(
                  padding: const EdgeInsets.only(left: 40, top: 16),
                  child: Row(
                    children: [
                      Text(
                        "\$${widget.product.price}",
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
