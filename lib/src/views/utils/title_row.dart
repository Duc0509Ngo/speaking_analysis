import 'package:flutter/material.dart';

class TitleRow extends StatelessWidget {
  const TitleRow({
    Key? key,
    required this.title,
    required this.colorTitle,
  }) : super(key: key);


  final String title;
  final Color colorTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15.0,
        left: 15.0,
      ),
      child: Row(
        children: [
          CircleAvatar(backgroundColor: colorTitle),
          const SizedBox(
            width: 25.0,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

