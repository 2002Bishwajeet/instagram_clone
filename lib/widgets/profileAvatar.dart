import 'package:flutter/material.dart';
import 'package:instagram_clone/Models/Instadata.dart';

class ProfileAvatar extends StatelessWidget {
  final ProfileStory user;

  ProfileAvatar(this.user);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            backgroundColor: Colors.red.shade200,
            radius: 34,
            child: CircleAvatar(
              backgroundColor: Color.fromRGBO(56, 69, 81, 1),
              radius: 32,
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(this.user.image),
              ),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            '${this.user.userid}',
          )
        ],
      ),
    );
  }
}