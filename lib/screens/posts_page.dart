import 'package:flutter/material.dart';
import 'package:ui_test/constants.dart';
import 'package:ui_test/models/post.dart';
import 'package:ui_test/widgets/post_widget.dart';

class PostsScreen extends StatelessWidget {
  PostsScreen({super.key});

  List<PostWidget> postItems = [
    PostWidget(
      post: Post(
        likeCount: 282,
        commentCount: 30,
        author: "coochieforbreakfast",
        subred: "AskReddit",
        body:
            "What's something you've gotten away with as a kid because \"they're young and don't know what they're doing!\" when really you knew exactly what you were doing?",
        hours: 7,
        isAvatarIcon: true,
      ),
      isTrending: true,
    ),
    PostWidget(
      post: Post(
        likeCount: 12,
        commentCount: 30,
        author: "internetPositif",
        subred: "CoronaVirus",
        body: "Navigating the New Normal",
        hours: 16,
        isAvatarIcon: false,
      ),
      hasMedia: true,
    ),
    PostWidget(
      post: Post(
        likeCount: 12,
        commentCount: 30,
        author: "theaikinsguy",
        subred: "Flutter Dev",
        body:
            "I was really trying to make this widget as dynamic as possible but ...It's just a UI test right?",
        hours: 7,
        isAvatarIcon: false,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // get screen size
    // var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.2),
      // primary: true,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: postItems,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: priCol,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
