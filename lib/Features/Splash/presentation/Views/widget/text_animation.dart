import 'package:flutter/material.dart';

class TextAnimation extends StatelessWidget {
  const TextAnimation({super.key, required this.slidanim});

  final Animation<Offset> slidanim;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: slidanim,
        builder: (BuildContext context, _) {
          return SlideTransition(
            position: slidanim,
            child: Text(
              "Read Free Books",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          );
        },
      ),
    );
  }
}
