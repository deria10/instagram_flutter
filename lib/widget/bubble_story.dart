import 'package:flutter/material.dart';

class BubbleStory extends StatelessWidget {
  const BubbleStory({
    Key? key, 
    required this.name,
    required this.isMe,
    }): super(key: key);

final String name;
final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Stack(alignment: Alignment.bottomRight, children: [
            CircleAvatar(
              radius: 41,
            child: CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1633332755192-727a05c4013d?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D$name'),
            ),
          ),
          if (isMe)
          const CircleAvatar(
            radius: 12,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 11,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.add,
                size: 20,
              ),
            ),
          )
          ],),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(name),
        ),
        ],
      ),
      
    );
  }
}