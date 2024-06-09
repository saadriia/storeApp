import 'package:flutter/material.dart';
import 'package:shopiphy/screens/constants.dart';
import 'package:shopiphy/screens/nav_Bar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontentColor,
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween ,
              children: [
                IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.all(15),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BottomNavBar(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.arrow_back_ios_new),
                ),
                const Text('سلة المشتريات ', 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25 ,                ),
                ),
                Container(),

              ],
            ),
          ),
          
        ],
      )),
    );
  }
}
