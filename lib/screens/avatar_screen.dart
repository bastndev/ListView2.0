import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {

  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text('Avatar'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right:5),
            child: CircleAvatar(
              backgroundColor: Colors.teal[100],
              child:const Text('BTN'),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/113950039?v=4'),
        )
      ),
    );
  }
}