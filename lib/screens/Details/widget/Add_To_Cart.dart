// ignore_for_file: prefer_const_declarations, deprecated_member_use

import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/material.dart';
import 'package:shopiphy/models/product_model.dart';
import 'package:shopiphy/provider/cart_provider.dart';
import 'package:shopiphy/screens/constants.dart';

class AddToCart extends StatefulWidget {
  final Product product;
  final void Function()? onTap;
  const AddToCart({super.key, required this.product, this.onTap});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  int currntIndex = 1;

  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    final number = "201021425996";
    
    //String message =   Product.title;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.black,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  20,
                ),
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      if (currntIndex != 1) {
                        setState(() {
                          currntIndex--;
                        });
                      }
                    },
                    iconSize: 18,
                    icon: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                  // const SizedBox(
                  //   width: 10,
                  // ),
                  Text(
                    currntIndex.toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        currntIndex++;
                      });
                    },
                    iconSize: 18,
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () async {
                Uri uri = Uri.parse(
                    'https://wa.me/$number?text=${Uri.encodeComponent(widget.product.title)} \n \n ممكن تفاصيل ');
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri);
                }
                // sendMessageOnWhatsApp(
                //   product: widget.product,
                // );

                provider.toggleFavorite(widget.product);
                const snackBar = SnackBar(
                  content: Text(
                    'تم طلب المنتج بنجاح ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  duration: Duration(seconds: 1),
                );

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Container(
                height: 44,
                width: 181,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: const Center(
                  child: Text(
                    "اطلب على الواتس ",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //اطلب على الواتس
  // static Future<void> sendMessageOnWhatsApp({required Product product}) async {
  //   final number = "201021425996";
  //   final message = " \n ${product.title}, ";
  //   final url = 'https://wa.me/$number';
  //   if (await canLaunch(url)) {
  //     await launch(url);

  //     throw Exception('err $url ');
  //   }
  // }
}
