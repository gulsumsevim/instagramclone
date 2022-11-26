// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import 'widget/bottombar.dart';
import 'widget/post.dart';
import 'widget/story.dart';

class AppScreen extends StatefulWidget {
  @override
  _AppScreenState createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 10,
        title: const Text(
          'Instagram',
          style: TextStyle(
              color: Colors.black,
              decoration: TextDecoration.none,
              fontFamily: 'Billabong',
              fontSize: 40),
        ),
        actions: [
          IconButton(
              color: Colors.black,
              icon: Icon(
                Icons.add_box_outlined,
                size: 30,
              ),
              onPressed: () {}),
          IconButton(
              color: Colors.black,
              icon: const Icon(
                Icons.favorite_outline_rounded,
                size: 30,
              ),
              onPressed: () {}),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/message.png',
              width: 27,
              height: 27,
            ),
          )
        ],
      ),
      body: Column(children: [
        StoryPage(),
        Divider(
          color: Colors.grey,
        ),
        Expanded(child: PostPage())
      ]),
      bottomNavigationBar: BottombarWidget(),
    );
  }
}
