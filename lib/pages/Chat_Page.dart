import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram_clone/Models/Instadata.dart';
import 'package:instagram_clone/Models/gradient_icons.dart';
import 'package:instagram_clone/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      appBar: AppBar(
        backgroundColor: context.cardColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
          splashRadius: 2,
        ),
        centerTitle: true,
        elevation: 1.0,
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                dummydata[0].userid,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              IconButton(
                icon: Icon(Icons.keyboard_arrow_down_sharp),
                onPressed: () {},
                splashRadius: 2,
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
              splashRadius: 2, icon: Icon(Feather.video), onPressed: () {}),
          IconButton(
              splashRadius: 2, icon: Icon(Feather.info), onPressed: () {})
        ],
        bottom: TabBar(
          automaticIndicatorColorAdjustment: true,
          controller: _tabController,
          tabs: [
            Tab(
              child: Text("Chats",
                  style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.light
                          ? Colors.black
                          : Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
            Tab(
              child: Text(
                "Rooms",
                style: TextStyle(
                    color: Theme.of(context).brightness == Brightness.light
                        ? Colors.black
                        : Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: context.canvasColor,
        height: 60.0,
        child: BottomAppBar(
          elevation: 1.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              bottomModel(),
              Text("Camera",
                  style: TextStyle(
                      foreground: Paint()..shader = linearGradient,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              height: 40,
              margin: EdgeInsets.fromLTRB(20, 2, 20, 0),
              decoration: BoxDecoration(
                color: context.canvasColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                autocorrect: true,
                cursorColor: Theme.of(context).canvasColor,
                cursorHeight: 0,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 10),
                    hintText: "Search"),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Column(
            children: [
               ...chaadata.map((e) => ChatCapsule(e)).toList(),
            ],
          ),
        ],
      ),
    );
  }

  IconButton bottomModel() {
    return IconButton(
      splashRadius: 2,
      icon: GradientIcon(
        Icons.camera_alt,
        35.0,
        LinearGradient(
          colors: bgStoryColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      onPressed: () {},
    );
  }
}

class ChatCapsule extends StatelessWidget {
  final Chatdata chat;

   ChatCapsule( this.chat);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 2, 10, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(this.chat.img),
                radius: 28,
              ),
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    
                    Padding(
                      padding: const EdgeInsets.only(right:120.0),
                      child: Text(this.chat.id,textAlign: TextAlign.left,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right:28.0),
                      child: Text(this.chat.msg,style: TextStyle(color: Colors.grey.shade600),),
                    ),
                  ],
                ),
              ),
              Spacer(),
              IconButton(icon: Icon(Icons.camera_alt_outlined), onPressed: () {},splashRadius: 2,)
            ],
          ),
          SizedBox(
            height: 12,
          )
        ],
      ),
    );
  }
}
