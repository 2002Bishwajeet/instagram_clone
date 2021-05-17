import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram_clone/Models/Instadata.dart';

class ProfileSideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
