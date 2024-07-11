import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ig_flutter_ui/widget/bubble_story.dart';
import 'package:ig_flutter_ui/widget/user_post.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List users = [
    'Anisa',
    'Hassan',
    'Sumanto',
    'Sukarna',
    'Ngatiman',
    'Boedi',
    'Marijan',
    'Deri'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Instagram',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [
          Icon(
            Icons.add_box_outlined,
            size: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.favorite_border,
              size: 30,
          ),
            ),
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.send_outlined,
              size: 30,
          ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return BubbleStory(
                  name: users[index],
                  isMe: index == 0 ? true: false, 
                );
              },
              itemCount: users.length,
            ),
          ),
          const Divider(
            height: 1,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return UserPost(name: users[index]);
              },
              itemCount: users.length,
            ),
          )
        ],
      )
    );
  }
}