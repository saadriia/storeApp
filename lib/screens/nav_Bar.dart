import 'package:flutter/material.dart';
import 'package:shopiphy/favorite.dart';
import 'package:shopiphy/screens/CArt/CartScreen.dart';
import 'package:shopiphy/screens/Home/homeScreen.dart';

import 'Home/GridScreen.dart';
import 'constants.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int cuttentIndex = 2;
      List screens = const [
              GridScreen(),
              Favorit(),
              HomeScreen(),
              CartScreen(),Scaffold(),
            ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            cuttentIndex = 2;
          
          });
        },
        shape: const CircleBorder(),
        backgroundColor: kPrimaryColor,
        child: const Icon(
          Icons.home,
          color: Colors.white,
          size: 40,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        height: 60,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  cuttentIndex = 1;
                });
              },
              icon: Icon(
                Icons.grid_view_outlined,
                size: 40,
                color: cuttentIndex == 1 ? kPrimaryColor : Colors.grey.shade400,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  cuttentIndex = 2;
                });
              },
              icon: Icon(
                Icons.favorite_border_rounded,
                size: 40,
                color: cuttentIndex == 2 ? kPrimaryColor : Colors.grey.shade400,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  cuttentIndex = 3;
                });
              },
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 40,
                color: cuttentIndex == 3 ? kPrimaryColor : Colors.grey.shade400,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  cuttentIndex = 4;
                });
              },
              icon: Icon(
                Icons.person_2_outlined,
                size: 40,
                color: cuttentIndex == 4 ? kPrimaryColor : Colors.grey.shade400,
              ),
            ),
          ],
        ),
      ),
      body:screens[cuttentIndex],
   

    );
  }
}
