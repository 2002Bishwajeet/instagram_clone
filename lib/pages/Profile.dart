import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram_clone/Models/Instadata.dart';
import 'package:instagram_clone/pages/Home_Page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

const String _url = 'https://linktr.ee/2002Bishwajeet';

void _launchURL() async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: context.canvasColor,
        elevation: 0,
        leading: Icon(CupertinoIcons.lock),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "biswa_20p",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(MaterialIcons.add_box),
            onPressed: () {},
            splashRadius: 2,
          ),
          IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                return Scaffold.of(context).openEndDrawer();
              },
              splashRadius: 2),
        ],
      ),
      endDrawer: Drawer(
        child: Container(
          child: ListView(
            children: [
              DrawerHeader(child: Text(profiledata[0].name)),
              ListTile(
                leading: Icon(FontAwesome.archive),
                title: Text("Archive"),
              ),
              ListTile(
                leading: Icon(FontAwesome.archive),
                title: Text("Your Activity"),
              ),
              ListTile(
                leading: Icon(FontAwesome.qrcode),
                title: Text("QR Code"),
              ),
              ListTile(
                leading: Icon(FontAwesome.save),
                title: Text("Saved"),
              ),
              ListTile(
                leading: Icon(FontAwesome.list),
                title: Text("Close Friends"),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.person_add),
                title: Text("Discover People"),
              ),
              ListTile(
                leading: Icon(FontAwesome.heart),
                title: Text("COVID-19 Information Center"),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        child: Column(
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
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      Text(
                        "Posts",
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(profiledata[0].followers,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      Text(
                        "Followers",
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(profiledata[0].following,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
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
            // Expanded(
            //   child: TabBar(
            //     controller: _controller,
            //     tabs: [
            //       Tab(
            //         icon: Icon(Icons.grid_on_sharp),
            //       ),
            //       Tab(
            //         icon: Icon(CupertinoIcons.person_crop_square_fill),
            //       ),
            //     ],
            //   ),
            // ),
            // TabBarView(controller: _controller, children: [
            //   Text("Profile Pictures"),
            //   Text("Tagged Pictures"),
            // ]),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: context.cardColor,
        height: 60.0,
        child: BottomAppBar(
          color: context.cardColor,
          elevation: 1.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  splashRadius: 2,
                  icon: Icon(Icons.home_filled),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HomePage();
                    }));
                  }),
              IconButton(
                splashRadius: 2,
                icon: Icon(Icons.search_rounded),
                onPressed: () {},
              ),
              IconButton(
                splashRadius: 2,
                icon: Icon(Icons.add_box),
                onPressed: () {},
              ),
              IconButton(
                splashRadius: 2,
                icon: Icon(Icons.favorite_outline),
                onPressed: () {},
              ),
              IconButton(
                  splashRadius: 2, icon: Icon(Icons.person), onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}

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
