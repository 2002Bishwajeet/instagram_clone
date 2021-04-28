// ignore: camel_case_types
import 'package:flutter/cupertino.dart';

class User {
  String userid;
  String image;

  User({
    @required this.userid,
    @required this.image,
  });
}

class Post {
  String image;
  String title;
  String userid;
  String postimg;
  String userliked;
  String comments;

  Post(
      {this.image,
      this.title,
      this.userid,
      this.postimg,
      this.userliked,
      this.comments});
}

List<User> dumdata = [
  User(
    userid: 'biswa_20p',
    image: 'assets/images/portrait.jpg',
  ),
  User(
    userid: 'hrithik12',
    image: 'assets/images/hrk.jpg',
  ),
  User(
    userid: 'norafatehi',
    image: 'assets/images/nora.jpeg',
  ),
  User(
    userid: 'salman',
    image: 'assets/images/selm.jpg',
  ),
  User(
    userid: 'scarlet21',
    image: 'assets/images/scar.jpg',
  ),
  User(
    userid: 'robert',
    image: 'assets/images/robert.jpg',
  ),
  User(
    userid: 'hulk',
    image: 'assets/images/bruce.jpg',
  ),
];

List<Post> dummydata = [
  Post(
      image: 'assets/images/portrait.jpg',
      title: 'Corona jaata nhi yaar😭',
      userid: 'biswa_20p',
      postimg: 'assets/images/post1.jpeg',
      userliked: '236',
      comments: '36'),
  Post(
      image: 'assets/images/hrk.jpg',
      title: 'Just Hera Pheri Stuffs',
      userid: 'hrithik21',
      postimg: 'assets/images/post2.jpg',
      userliked: '150',
      comments: '100'),
  Post(
      image: 'assets/images/nora.jpeg',
      title: '21 din mein cases quadruple',
      userid: 'norafateh',
      postimg: 'assets/images/post3.jpg',
      userliked: '500',
      comments: '150'),
  Post(
      image: 'assets/images/selm.jpg',
      title: 'Aaj bajaenge thaali',
      userid: 'selmon',
      postimg: 'assets/images/post4.jpg',
      userliked: '1500',
      comments: '600'),
  Post(
      image: 'assets/images/scar.jpg',
      title: 'Lauria lag gye',
      userid: 'scarlet',
      postimg: 'assets/images/post5.jpg',
      userliked: '750',
      comments: '245'),
  Post(
      image: 'assets/images/robert.jpg',
      title: 'Haa Yeh Karlo Pehle',
      userid: 'tonyboy',
      postimg: 'assets/images/post6.png',
      userliked: '600',
      comments: '100'),
        Post(
      image: 'assets/images/bruce.jpg',
      title: 'Just RELAX',
      userid: 'hulky',
      postimg: 'assets/images/post7.jpg',
      userliked: '1200',
      comments: '300'),
];
