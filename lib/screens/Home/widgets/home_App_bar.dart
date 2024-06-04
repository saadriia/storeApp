
import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: kcontentColor,
            padding: const EdgeInsets.all(20),
          ),
          onPressed: () {},
          icon: Icon(Icons.grid_view_outlined),
        ),
     
    
    IconButton(
      style: IconButton.styleFrom(
        backgroundColor: kcontentColor,
        padding: const EdgeInsets.all(20),
      ),
      onPressed: () {},
      iconSize: 30,
      icon: Icon(Icons.notifications_outlined),
    ),
    // IconButton(
    //   style: IconButton.styleFrom(
    //     backgroundColor: kcontentColor,
    //     padding: const EdgeInsets.all(20),
    //   ),
    //   onPressed: () {},
    //   icon: Icon(Icons.notifications_outlined),
    // ),
    
                ],
                );
  }
}
