import 'package:flutter/material.dart';
import 'package:kebhips/Data/DataExp3.dart';
import 'package:kebhips/SwipeAnimation/gesture_card_deck.dart';

class Example3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureCardDeck(
      isButtonFixed: false,
      data: imageData,
      animationTime: Duration(milliseconds: 500),
      showAsDeck: true,
      velocityToSwipe: 1200,
      leftSwipeButton: Container(
        height: 50,
        width: 150,
        decoration: BoxDecoration(
            color: Color.fromRGBO(61, 135, 160, 1),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            )),
        child:
        Center(child: Text("LEFT", style: TextStyle(color: Colors.white))),
      ),
      rightSwipeButton: Container(
        height: 50,
        width: 150,
        decoration: BoxDecoration(
            color: Color.fromRGBO(95, 169, 194, 1),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            )),
        child:
        Center(child: Text("RIGHT", style: TextStyle(color: Colors.white))),
      ),
      onSwipeLeft: (index) {
        print("on swipe left");
        print(index);
      },
      onSwipeRight: (index) {
        print("on swipe right");
        print(index);
      },
      onCardTap: (index) {
        print("on card tap");
        print(index);
      },
      leftPosition: 25,
      topPosition: 50,
      leftSwipeBanner: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Transform.rotate(
          angle: 0.5,
        ),
      ),
      rightSwipeBanner: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Transform.rotate(
            angle: -0.5,
          )),
    );
  }
}