import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram_clone/Models/Instadata.dart';

class InstaCard extends StatelessWidget {
  final Post post;
  InstaCard(this.post);
  @override
  Widget build(BuildContext context) {
   // var devicesize = MediaQuery.of(context).size;
    return SizedBox(
     
      child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundImage: AssetImage(this.post.image),
                ),
                SizedBox(
                  width: 7,
                ),
                Text(this.post.userid,
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Spacer(),
                IconButton(icon: Icon(Icons.more_horiz), onPressed: () {})
              ],
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(this.post.postimg), fit: BoxFit.fill),
              ),
              height: 300,
              // margin: EdgeInsets.all(4),
            ),
            Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        icon: Icon(CupertinoIcons.heart), onPressed: () {}),
                    IconButton(
                        icon: Icon(Icons.comment_outlined), onPressed: () {}),
                    IconButton(
                        icon: Icon(MaterialIcons.send), onPressed: () {}),
                    Spacer(),
                    IconButton(
                        icon: Icon(Icons.bookmark_border), onPressed: () {}),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "${this.post.userliked} likes",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Text("${this.post.userid}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          Text(" ${this.post.title}"),
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "View all ${this.post.comments} comments",
                      style: TextStyle(
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.grey.shade700
                              : Colors.grey.shade700),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
          ],
        ),
      
    );
  }
}
