import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram_clone/Models/Insta_home_model.dart';
import 'package:instagram_clone/pages/Profile.dart';
import 'package:velocity_x/velocity_x.dart';

import 'Chat_Page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final controller = PageController(
      initialPage: 0,
    );
    return PageView(
      controller: controller,
      children: [
        Homepage(controller: controller),
        ChatPage(controller: controller),
      ],
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({
    Key key,
    @required this.controller,
  }) : super(key: key);

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0.0,
        leading: Icon(Icons.add_box_outlined),
        title: Container(
          height: 40.0,
          child: Theme.of(context).brightness == Brightness.dark
              ? Image.asset("assets/images/log3.png")
              : Image.asset("assets/images/insta_logo.png"),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: IconButton(
                  splashRadius: 2,
                  icon: Icon(FontAwesome5Brands.facebook_messenger),
                  onPressed: () {
                    if (controller.hasClients) {
                      controller.animateToPage(1,
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeInOut);
                    }
                  }))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stories(),
        ],
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
                onPressed: () {},
              ),
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
                  splashRadius: 2,
                  icon: Icon(Icons.person),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ProfilePage();
                    }));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
