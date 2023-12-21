import 'package:flutter/material.dart';
import 'package:ui_test/constants.dart';
import 'package:ui_test/models/post.dart';
import 'package:ui_test/widgets/media_widget.dart';
import 'package:unicons/unicons.dart';

class PostItem extends StatefulWidget {
  final Post post;
  const PostItem({super.key, required this.post});

  @override
  State<PostItem> createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  bool isLiked = false;
  int likes = 0;

  @override
  void initState() {
    super.initState();
    likes = widget.post.likeCount;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.post.body,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 10),
          // show video thumbnail if post has media
          widget.post.hasMedia! ? const MediaWidget() : const SizedBox.shrink(),
          const SizedBox(height: 10),
          Row(
            children: [
              Icon(
                UniconsLine.award,
                color: priCol,
              ),
              const Text(
                "1 Reward",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              )
            ],
          ),
          // author and elapsed hours

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isLiked = true;
                        likes++;
                      });
                    },
                    icon: Icon(
                      Icons.arrow_upward,
                      color: isLiked ? priCol : Colors.grey[700],
                      weight: 600,
                    ),
                  ),
                  // const SizedBox(width: 10),
                  Text(
                    "${likes} K",
                    style: TextStyle(
                      color: isLiked ? priCol : Colors.grey[700],
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  // const SizedBox(width: 10),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isLiked = false;
                        likes--;
                      });
                    },
                    icon: Icon(
                      Icons.arrow_downward,
                      color: Colors.grey[700],
                      weight: 600,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    UniconsLine.comment_alt,
                    color: Colors.grey[700],
                    weight: 600,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "${widget.post.commentCount} K",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.share_outlined,
                    color: Colors.grey[700],
                    weight: 600,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Share',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
