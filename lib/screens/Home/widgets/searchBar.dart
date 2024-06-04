import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
      ),
      padding:const EdgeInsets.symmetric(horizontal: 25,vertical: 5) ,
    
    );
  }
}
