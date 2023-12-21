import 'package:flutter/material.dart';
import 'package:ui_test/constants.dart';
import 'package:ui_test/models/post.dart';
import 'package:unicons/unicons.dart';

class PostWidget extends StatefulWidget {
  final Post post;

  final bool? isTrending;
  final bool? hasMedia;

  const PostWidget({
    super.key,
    required this.post,
    this.isTrending = false,
    this.hasMedia = false,
  });

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  bool isLiked = false;
  int likes = 0;

  @override
  void initState() {
    super.initState();
    likes = widget.post.likeCount;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(onTap: () {},
      child: Container(
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
            widget.isTrending!
                ? Container(
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
                  )
                : const SizedBox.shrink(),
            Row(
              children: [
                //reddit icon
                widget.post.isAvatarIcon
                    ? Icon(Icons.reddit, color: priCol, size: 48)
                    : const CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/aikins.jpg',
                        ),
                      ),
                const SizedBox(width: 10),
                Text(
                  'r/${widget.post.subred}',
                  style: const TextStyle(
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
            Text(
              widget.post.body,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10),
            // show video thumbnail if post has media
            widget.hasMedia!
                ? Stack(
                    children: [
                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image:
                                AssetImage('assets/images/video_thumbnail.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 50,
                        left: size.width / 2 - 60,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const ShapeDecoration(
                            color: Colors.white,
                            shape: CircleBorder(),
                          ),
                          child: Icon(
                            Icons.play_arrow,
                            color: priCol,
                            size: 32,
                          ),
                        ),
                      )
                    ],
                  )
                : const SizedBox.shrink(),
            // author and elapsed hours
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                children: [
                  Text(
                    'by '
                    'u/${widget.post.author}',
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(width: 10),
                  // small dot
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: 8,
                    height: 8,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Text(
                    '${widget.post.hours}h',
                    style: const TextStyle(
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
      ),
    );
  }
}
