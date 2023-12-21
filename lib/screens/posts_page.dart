import 'package:flutter/material.dart';
import 'package:ui_test/constants.dart';
import 'package:unicons/unicons.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // get screen size
    // var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.2),
      primary: true,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return SizedBox();
            },
          ),
        ),
      ),
    );
  }
}

