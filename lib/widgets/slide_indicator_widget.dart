import 'package:flutter/material.dart';

class SlideIndicator extends StatelessWidget {
  const SlideIndicator({Key? key, required this.isActive}) : super(key: key);

  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.only(right: 4.0),
      width: isActive ? 20 : 8,
      height: 8,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(50.0)),
          color: isActive ? const Color(0xff1C211D) : const Color(0xffC4C4C4)),
    );
  }
}
