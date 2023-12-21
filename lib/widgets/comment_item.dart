import 'package:flutter/material.dart';
import 'package:ui_test/constants.dart';
import 'package:ui_test/widgets/reply_item.dart';

class CommentItem extends StatelessWidget {
  final String user;
  final String comment;
  final List<ReplyItem> replies;

  const CommentItem({
    super.key,
    required this.user,
    required this.comment,
    required this.replies,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/aikins.jpg',
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user,
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      comment,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 10,
                    ),
                  ],
                ),
              ),
              const Icon(Icons.more_vert),
            ],
          ),

          // Replies
          Column(
            children: replies,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Reply",
                style: TextStyle(color: priCol),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
