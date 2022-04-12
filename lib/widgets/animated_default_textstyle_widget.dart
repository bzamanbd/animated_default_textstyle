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
  _chngTxt(){
    setState(() {
      _bool = !_bool;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment : MainAxisAlignment.center,
        crossAxisAlignment : CrossAxisAlignment.center,
        children: [
          AnimatedDefaultTextStyle(
            child: const Text('Flutter'),
            style: _bool? const TextStyle(color: Colors.red, fontSize: 35): const TextStyle(color: Colors.black, fontSize: 35),
            duration: const Duration(seconds: 1),
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
