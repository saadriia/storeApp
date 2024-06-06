import 'package:flutter/material.dart';

import 'widgets/home_App_bar.dart';
import 'widgets/image_slider.dart';
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
              ImagSlider(
                  onChange: (value) {
                    setState(
                      () {
                        currentSlider = value;
                      },
                    );
                  },
                  currentSlide: currentSlider),
            ],
          ),
        ),
      ),
    );
  }
}
