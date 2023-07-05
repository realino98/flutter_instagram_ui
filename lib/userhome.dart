import 'package:flutter/material.dart';
import 'package:social_media/util/bubble_stories.dart';

class UserHome extends StatelessWidget {
  const UserHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Instagram"),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.favorite),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.message),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          //Stories
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                BubbleStories(text: "Bernard"),
                BubbleStories(text: "Alex"),
                BubbleStories(text: "Winston"),
                BubbleStories(text: "Brown"),
                BubbleStories(text: "Kyle"),
                BubbleStories(text: "Robinson"),
              ],
            ),
          ),
          //Feeds
        ],
      ),
    );
  }
}
