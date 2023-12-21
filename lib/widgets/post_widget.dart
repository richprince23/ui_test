import 'package:flutter/material.dart';
import 'package:ui_test/constants.dart';
import 'package:unicons/unicons.dart';

class PostWidget extends StatelessWidget {
  final int likeCount;
  final int commentCount;
  final int shareCount;
  final String author;
  final String body;
  final int hours;
  final bool? isTrending;

  const PostWidget({
    super.key,
    required this.likeCount,
    required this.commentCount,
    required this.shareCount,
    required this.author,
    required this.body,
    required this.hours,
    this.isTrending = false,
  });

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
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey.shade300,
                ),
              ),
            ),
            child: Row(
              children: [
                const Text(
                  'Trending',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 30),
                DecoratedBox(
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                      side: BorderSide(color: Colors.grey.shade300),
                    ),
                  ),
                  child: const Icon(
                    Icons.chevron_right,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              //reddit icon
              Icon(Icons.reddit, color: priCol, size: 48),
              const SizedBox(width: 10),
              const Text(
                'r/FlutterDev',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              // options icon
              const Icon(Icons.more_vert, color: Colors.grey),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            'Flutter is Google’s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 10),
          // author and elapsed hours
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              children: [
                const Text(
                  'by '
                  'u/FlutterDev',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(width: 10),
                // small dot
                Container(
                  width: 5,
                  height: 5,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
                const Text(
                  '1h',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.arrow_upward,
                    color: Colors.grey[700],
                    weight: 600,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '1,2k',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Icon(
                    Icons.arrow_downward,
                    color: Colors.grey[700],
                    weight: 600,
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
                    '100',
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
