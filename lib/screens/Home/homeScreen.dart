import 'package:flutter/material.dart';
 
import 'widgets/home_App_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding:   EdgeInsets.all(20),
          child: Column(
crossAxisAlignment: CrossAxisAlignment.start
,            children: [
    SizedBox(height:30),

              CustomAppBar(),
                  SizedBox(height:20),

],
          ),
        ),
      ),
    );
  }
}
