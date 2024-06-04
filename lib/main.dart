import 'package:flutter/material.dart';

import 'mainScreen.dart';
import 'screens/nav_Bar.dart';

void main() {
  runApp(const Appstore());
}

class Appstore extends StatelessWidget {
  const Appstore({super.key});

  @override
  Widget build(BuildContext context) =>MaterialApp(
          debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //textTheme: ,
        fontFamily: 'Bentham',
      ),
      home: const BottomNavBar(),
      
    );
  }

