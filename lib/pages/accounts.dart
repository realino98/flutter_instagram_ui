import 'package:flutter/material.dart';
import 'package:social_media/util/account_tab_grid.dart';
import 'package:social_media/util/account_tab_reels.dart';
import 'package:social_media/util/accout_tab_tags.dart';
import 'package:social_media/util/bubble_stories.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.add),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.menu),
                  ),
                ],
              ),
            ],
          ),
        ),
        // backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              //Posts, Followers, Following
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "76",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text("posts"),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "1024",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text("Followers"),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "534",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text("Following"),
                    ],
                  ),
                ],
              ),
            ),
            //Bio,
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "YouTuber | Developer | Musician\nWelcome to my account",
                    // style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.link,
                        color: Colors.blue,
                      ),
                      Text(
                        "www.bernardrealino.xyz",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Center(child: Text("Edit Profile")),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Center(child: Text("Ad tools")),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Center(child: Text("Insight")),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Highlights,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Row(children: [
                BubbleStories(text: "Highlight 1"),
                BubbleStories(text: "Highlight 2"),
                BubbleStories(text: "Highlight 3"),
              ]),
            ),
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.grid_3x3_outlined),
                ),
                Tab(
                  icon: Icon(Icons.video_library),
                ),
                Tab(
                  icon: Icon(Icons.filter),
                ),
              ],
            ),
            Expanded(
                child: TabBarView(
              children: [
                AccountTabGrid(),
                AccountTabReels(),
                AccountTabTags(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
