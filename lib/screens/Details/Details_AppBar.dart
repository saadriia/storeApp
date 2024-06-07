import 'package:flutter/material.dart';

class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(15),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(15),
            ),
            onPressed: () {},
            icon: const Icon(Icons.share_location_outlined),
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(15),
            ),
            onPressed: () {},
            icon: const Icon(Icons.favorite),
          ),
        ],
      ),
    );
  }
}
