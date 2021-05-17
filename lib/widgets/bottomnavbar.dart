import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/Home_Page.dart';
import 'package:velocity_x/velocity_x.dart';

class BottomNavBar extends StatelessWidget {
  final Function route;
  final Function route1;
  final Function route2;
  final Function route3;
  final Function route4;

  const BottomNavBar(
      {this.route, this.route1, this.route2, this.route3, this.route4});
  @override
  Widget build(BuildContext context) {
    return Container(
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
                onPressed: route),
            IconButton(
              splashRadius: 2,
              icon: Icon(Icons.search_rounded),
              onPressed: route1,
            ),
            IconButton(
              splashRadius: 2,
              icon: Icon(Icons.add_box),
              onPressed: route2,
            ),
            IconButton(
              splashRadius: 2,
              icon: Icon(Icons.favorite_outline),
              onPressed: route3,
            ),
            IconButton(
                splashRadius: 2, icon: Icon(Icons.person), onPressed: route4),
          ],
        ),
      ),
    );
  }
}
