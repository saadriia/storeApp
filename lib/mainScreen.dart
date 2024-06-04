import 'package:flutter/material.dart';
import 'screens/constants.dart';

class mainScreen extends StatelessWidget {
  const mainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: ListView(
        children: [
            
           SizedBox(height: MediaQuery.of(context).size.height*.2,),
          Container(
           padding: EdgeInsets.only(top: 40),
          // height: MediaQuery.of(context).size.height*.2,
            child: Stack(
              
              alignment: Alignment.center,
              children: [
                Column(
                  
                  children: [
                    Image.asset(
                      'imgs/icons/buycart.png',
                    ),
                    const Positioned(
                      bottom: 0,
                      child: Text(
                        '4You',
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 36,),
            TextField(
              cursorColor: kPrimaryColor,
            decoration: InputDecoration(
              hintText: "Enter Your Email",
              prefixIcon:Icon(Icons.email,
              color: kPrimaryColor,
              ),

              filled: true,
              fillColor: kPrimaryColor,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide:BorderSide(
                  color: Colors.white
                ) ,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide:BorderSide(
                  color: Colors.white
                ) ,
              )
            ),
          ),
          SizedBox(height: 24,),
            TextField(              cursorColor: kPrimaryColor,

            decoration: InputDecoration(
              
              hintText: "Enter Your password",
              prefixIcon:Icon(Icons.password,
              color: kPrimaryColor,
              ),

              filled: true,
              fillColor: kPrimaryColor,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide:BorderSide(
                  color: Colors.white
                ) ,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide:BorderSide(
                  color: Colors.white
                ) ,
              )
            ),
          ),
        ],
      ),
    );
  }
}
