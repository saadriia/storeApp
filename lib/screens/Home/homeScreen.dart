// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopiphy/screens/Home/widgets/product_Cart.dart';

import '../../models/product_model.dart';
import 'widgets/home_App_bar.dart';
import 'widgets/searchBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlider = 0;
  @override
  Widget build(BuildContext context) {
    
  

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              const CustomAppBar(),
              const SizedBox(height: 20),
              const MySearchBar(),
              // ImagSlider(
              //   currentSlide: currentSlider,
              //   onChange: (value) {
              //     setState(
              //       () {
              //         currentSlider = value;
              //       },
              //     );
              //   },
              // ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '4u خصم 30% على كل كتب     ',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  // Text(
                  //   'َشوف كل المنتجات ',
                  //   style: TextStyle(
                  //     fontSize: 16,
                  //     fontWeight: FontWeight.w500,
                  //     color: Color.fromARGB(137, 78, 61, 61),
                  //   ),
                  // ),
                  SizedBox(
                    height: 5,
                    width: 5,
                  )
                ],
              ),
              SizedBox(height: 10,),
              GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.78,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: all.length,
                  itemBuilder: (context, index) {
                    return ProductCart(
                      product: all[index],
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
