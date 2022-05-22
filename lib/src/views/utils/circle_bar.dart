import 'package:flutter/material.dart';


class CircleBar extends StatelessWidget {
  const CircleBar({Key? key,required this.isActive}) : super(key: key);
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 8),
      height: isActive ? 13 : 9,
      width: isActive ? 13 : 9,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue[700] : Colors.grey,
        borderRadius: const BorderRadius.all(
          Radius.circular(13),
        ),
      ),
    );
  
  }
}