import 'package:flutter/material.dart';
import 'package:shopiphy/models/product_model.dart';
import 'package:shopiphy/screens/Details/widget/Items_details.dart';
import 'package:shopiphy/screens/constants.dart';

import 'widget/Details_AppBar.dart';
import 'widget/image_Slider.dart';

class DetailsScreen extends StatefulWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int currrentImage = 0;
  int currentSlide = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontentColor,
      body: SafeArea(
        child: Column(
          children: [
            const DetailsAppBar(),
            MyImageSlider(
              onChange: (index) {
                setState(() {
                  currrentImage = index;
                });
              },
              image: widget.product.image,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => AnimatedContainer(
                  duration: const Duration(microseconds: 300),
                  width: currentSlide == index ? 15 : 8,
                  height: 8,
                  margin: const EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentSlide == index
                          ? Colors.black
                          : Colors.transparent,
                      border: Border.all(color: Colors.black)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
              ),
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
                bottom: 100,

              ),
              child:   Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 ItemsDetails(product: widget.product),  

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
