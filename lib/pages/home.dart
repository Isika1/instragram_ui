import 'package:flutter/material.dart';
import 'package:instragram_ui/util/bubble_stories.dart';
import 'package:instragram_ui/util/user_post.dart';

class UserHome extends StatelessWidget {
  final List people = ['Music', 'Travel', 'Code', 'Bake', 'Pictures', 'Plant'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Instragram',
                  style: TextStyle(color: Colors.black),
                ),
                Row(
                  children: [
                    Icon(Icons.add),
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Icon(Icons.favorite),
                    ),
                    Icon(Icons.share),
                  ],
                ),
              ],
            )),
        body: Column(
          children: [
            //STORIES

            Container(
                height: 130,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: people.length,
                    itemBuilder: (context, index) {
                      return BubbleStories(text: people[index]);
                    })),

            //POSTS
            // UserPosts(
            //   name: '_isika_ghosh_',
            Expanded(
              child: ListView.builder(
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return UserPosts(
                      name: people[index],
                    );
                  }),
            ),
          ],
        ));
  }
}
