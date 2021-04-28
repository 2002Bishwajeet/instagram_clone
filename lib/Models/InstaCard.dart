import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram_clone/Models/Instadata.dart';

class InstaCard extends StatefulWidget {
  final Post post;

  InstaCard(this.post);

  @override
  _InstaCardState createState() => _InstaCardState();
}

class _InstaCardState extends State<InstaCard> {
  bool toggle = true;

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
                backgroundImage: AssetImage(this.widget.post.image),
              ),
              SizedBox(
                width: 7,
              ),
              Text(this.widget.post.userid,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Spacer(),
              IconButton(icon: Icon(Icons.more_horiz), onPressed: () {})
            ],
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(this.widget.post.postimg),
                  fit: BoxFit.fill),
            ),
            height: 300,
            // margin: EdgeInsets.all(4),
          ),
          Column(
            children: [
              Row(
                children: [
                  IconButton(
                      icon: toggle
                          ? Icon(CupertinoIcons.heart)
                          : Icon(
                              CupertinoIcons.heart_fill,
                              color: Colors.red.shade800,
                            ),
                      onPressed: () {
                        setState(() {
                          toggle = !toggle;
                          if (toggle)
                            --this.widget.post.userliked;
                          else
                            ++this.widget.post.userliked;
                        });
                      }),
                  IconButton(
                      icon: Icon(Icons.comment_outlined), onPressed: () {}),
                  IconButton(icon: Icon(MaterialIcons.send), onPressed: () {}),
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
                      "${this.widget.post.userliked} likes",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Text("${this.widget.post.userid}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        Text(" ${this.widget.post.title}"),
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "View all ${this.widget.post.comments} comments",
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
