import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'mainScreen.dart';
import 'provider/cart_provider.dart';
import 'screens/Home/homeScreen.dart';
import 'screens/nav_Bar.dart';

void main() {
  runApp(const Appstore());
}

class Appstore extends StatelessWidget {
  const Appstore({super.key});

  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => CartProvider(),
          )
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            //brightness: Brightness.dark,

            //textTheme:
            fontFamily: 'Bentham',
          ),
          home: BottomNavBar(),
        ),
      );
}
