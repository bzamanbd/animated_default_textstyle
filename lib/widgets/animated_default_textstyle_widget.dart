import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleWidget extends StatefulWidget {
  const AnimatedDefaultTextStyleWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedDefaultTextStyleWidget> createState() =>
      _AnimatedDefaultTextStyleWidgetState();
}

class _AnimatedDefaultTextStyleWidgetState
    extends State<AnimatedDefaultTextStyleWidget> {
  bool _bool = true;
  Color color = Color.fromARGB(
      255, Random().nextInt(255), Random().nextInt(255), Random().nextInt(255));
  TextStyle style1 = TextStyle(
      fontWeight: FontWeight.bold, color: Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255),
          Random().nextInt(255)), fontSize: 40);
  TextStyle style2 = TextStyle(
      fontWeight: FontWeight.bold, color: Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255),
          Random().nextInt(255)), fontSize: 40);

  _chngTxt() {
    setState(() {
      _bool = !_bool;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedDefaultTextStyle(
            child: const Text('Flutter'),
            style: _bool ? style1 : style2,
            duration: const Duration(microseconds: 8000),
            curve: Curves.decelerate,
          ),
          TextButton(
            onPressed: _chngTxt,
            child: const Text('Change the Text'),
          )
        ],
      ),
    );
  }
}
