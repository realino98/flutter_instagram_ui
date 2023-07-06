import 'package:flutter/material.dart';
import 'package:social_media/util/bubble_stories.dart';
import 'package:social_media/util/user_posts.dart';

class UserHome extends StatelessWidget {
  UserHome({super.key});

  final List people = [
    "Bernard",
    "Winston",
    "Brown",
    "Alex",
    "Kyle",
    "Robinson",
  ];

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
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: ((context, index) {
                return BubbleStories(text: people[index]);
              }),
            ),
          ),
          //Feeds

          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (contex, index) {
                return UserPosts(
                  name: people[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
