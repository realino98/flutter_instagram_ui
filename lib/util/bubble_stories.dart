import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  const BubbleStories({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[300],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(text),
        ],
      ),
    );
  }
}
