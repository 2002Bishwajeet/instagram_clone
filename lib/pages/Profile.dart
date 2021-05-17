import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram_clone/pages/Home_Page.dart';
import 'package:instagram_clone/widgets/Profilewidget.dart';
import 'package:instagram_clone/widgets/bottomnavbar.dart';
import 'package:velocity_x/velocity_x.dart';

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
        body: Container(
          child: ProfileWidget(),
        ),
        bottomNavigationBar: BottomNavBar(
          route: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Homepage(
                controller: PageController(initialPage: 0),
              );
            }));
          },
          route1: () {},
          route2: () {},
          route3: () {},
          route4: () {},
        ));
  }
}
