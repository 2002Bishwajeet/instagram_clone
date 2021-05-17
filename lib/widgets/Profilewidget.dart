import 'package:flutter/material.dart';
import 'package:instagram_clone/Models/Instadata.dart';
import 'package:instagram_clone/widgets/profileAvatar.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'https://linktr.ee/2002Bishwajeet';

void _launchURL() async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(24, 16, 24, 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 44,
                backgroundImage: AssetImage("assets/images/DP.jpg"),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(profiledata[0].post,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Text(
                    "Posts",
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(profiledata[0].followers,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Text(
                    "Followers",
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(profiledata[0].following,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Text(
                    "Following",
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          margin: EdgeInsets.fromLTRB(24, 0, 0, 8),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    profiledata[0].name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    profiledata[0].bio,
                  )),
              Align(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                      radius: 0,
                      onTap: () async {
                        _launchURL();
                      },
                      child: Text(
                        profiledata[0].link,
                        style: TextStyle(color: Color(0xFF6AA8D1)),
                      ))),
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          margin: EdgeInsets.fromLTRB(24, 0, 24, 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 1, color: Colors.grey[400]),
          ),
          padding: EdgeInsets.fromLTRB(0, 6, 0, 6),
          child: Center(
              child: Text(
            "Edit Profile",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
        ),
        SizedBox(
          height: 10,
        ),
        Flexible(
          child: ListView(
            primary: true,
            addRepaintBoundaries: false,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              ...profiledata2.map((e) => ProfileAvatar(e)).toList(),
            ],
          ),
        ),
      ],
    );
  }
}
