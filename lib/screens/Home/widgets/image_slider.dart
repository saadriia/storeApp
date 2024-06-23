import 'package:flutter/material.dart';

class ImagSlider extends StatelessWidget {
  final Function(int) onChange;
  final int currentSlide;
  const ImagSlider(
      {super.key, required this.onChange, required this.currentSlide});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Stack(
        
        children: [
           
          Center(
            child: SizedBox(
              height: 220,
              width: 110,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  allowImplicitScrolling: true,
                  onPageChanged: onChange,
                  physics: const ClampingScrollPhysics(),
                  children: [
                    //SizedBox(height: 16,),
                    Image.asset(
                      'imgs/FSicons/tow.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'imgs/FSicons/one.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'imgs/FSicons/one.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "imgs/FSicons/two.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/imgs/FSicons/three.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/imgs/FSicons/four.jpg",
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            bottom: 10,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  5,
                  (index) => AnimatedContainer(
                    duration: const Duration(microseconds: 300),
                    width: currentSlide == index ? 15 : 8,
                    height: 8,
                    margin: const EdgeInsets.only(right: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentSlide == index
                          ? Colors.black
                          : Colors.transparent,
                          border: Border.all(color:Colors.black )
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
