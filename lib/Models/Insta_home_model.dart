import 'package:flutter/material.dart';
import 'package:instagram_clone/Models/InstaCard.dart';
import 'package:instagram_clone/Models/Instadata.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var devicesize = MediaQuery.of(context).size;
    return SizedBox(
      height: devicesize.height * 0.815, //0.826 for redmi note 5 pro //0.815 for pixel 3a
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              SizedBox(
                height: devicesize.height * 0.15,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 8,
                        ),
                        ...dumdata.map((e) => UserAvatar(e)).toList(),
                        //dumdata.map((e) => UserAvatar(e)).toList(), //Yeh wala kaam nhi karta
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          ...dummydata.map((e) => InstaCard(e)).toList(),
        ],
      ),
    );
  }
}

class UserAvatar extends StatelessWidget {
  final User user;

  UserAvatar(this.user);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            backgroundColor: Colors.red.shade200,
            radius: 36,
            child: CircleAvatar(
              backgroundColor: Color.fromRGBO(56, 69, 81, 1),
              radius: 34,
              child: CircleAvatar(
                radius: 33,
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
