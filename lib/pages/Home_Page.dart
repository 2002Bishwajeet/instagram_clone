import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram_clone/Models/Insta_home_model.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
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
              child: IconButton(icon: Icon(MaterialIcons.send), onPressed: (){}))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stories(),
         
         
        ],
      ),
      bottomNavigationBar: Container(
        color: context.canvasColor,
        height: 60.0,
        child: BottomAppBar(
          elevation: 1.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.home_filled),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.search_rounded),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.add_box),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
