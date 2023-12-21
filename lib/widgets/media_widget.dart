import 'package:flutter/material.dart';
import 'package:ui_test/constants.dart';

class MediaWidget extends StatelessWidget {
  const MediaWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          height: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: AssetImage('assets/images/video_thumbnail.jpg'),
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
    );
  }
}
