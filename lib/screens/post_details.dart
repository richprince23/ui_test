import 'package:flutter/material.dart';
import 'package:ui_test/constants.dart';
import 'package:ui_test/models/post.dart';
import 'package:ui_test/widgets/comment_item.dart';
import 'package:ui_test/widgets/post_item.dart';
import 'package:ui_test/widgets/post_widget.dart';
import 'package:ui_test/widgets/reply_item.dart';

class PostDetails extends StatefulWidget {
  final Post post;

  const PostDetails({super.key, required this.post});

  @override
  State<PostDetails> createState() => _PostDetailsState();
}

class _PostDetailsState extends State<PostDetails> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.1,
              child: Material(
                color: Colors.white,
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      widget.post.isAvatarIcon
                          ? Icon(Icons.reddit, color: priCol, size: 48)
                          : const CircleAvatar(
                              backgroundImage: AssetImage(
                                'assets/images/aikins.jpg',
                              ),
                            ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "u/${widget.post.subred}",
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "by u/${widget.post.author}",
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                  ),
                                  maxLines: 2,
                                ),
                                Container(
                                  margin: const EdgeInsets.all(4),
                                  width: 4,
                                  height: 4,
                                  decoration: const BoxDecoration(
                                    color: Colors.grey,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Text(
                                  "${widget.post.hours}h",
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(4),
                                  width: 4,
                                  height: 4,
                                  decoration: const BoxDecoration(
                                    color: Colors.grey,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                const Text(
                                  "i.redd.it",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            color: priCol,
                            width: 1,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        child: Text(
                          "JOIN",
                          style: TextStyle(
                            color: priCol,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // post details
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    PostItem(post: widget.post),
                    // comments and replies main container
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          // header
                          Row(
                            children: [
                              const Text(
                                "Best Comments",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(width: 30),
                              DecoratedBox(
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                    side:
                                        BorderSide(color: Colors.grey.shade300),
                                  ),
                                ),
                                child: const Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  size: 32,
                                  weight: 600,
                                ),
                              ),
                            ],
                          ),
                          const CommentItem(
                            user: "HelloWorld404",
                            comment:
                                "What is new normal? It's absolutely abnormal!",
                            replies: [
                              ReplyItem(
                                user: "BlueSky312",
                                msg: 'Her death be no pity',
                              ),
                              ReplyItem(
                                user: "BubbleWrapMan",
                                msg: "Don't lift it, search for vaccine",
                              ),
                            ],
                          ),

                          const CommentItem(
                            user: "MedalOfHunter4",
                            comment:
                                "Why do I get a feeling the \"New Normal\" will feel like something Dystopian like from 1984?",
                            replies: [
                              ReplyItem(
                                user: "Richprince23",
                                msg:
                                    'Am I the only person who is confused here?',
                              ),
                              ReplyItem(
                                user: "BubbleWrapMan",
                                msg: "Let's pray it's something better🙏",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
