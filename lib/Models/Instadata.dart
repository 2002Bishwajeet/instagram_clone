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
  int userliked;
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
      userliked: 236,
      comments: '36'),
  Post(
      image: 'assets/images/hrk.jpg',
      title: 'Just Hera Pheri Stuffs',
      userid: 'hrithik21',
      postimg: 'assets/images/post2.jpg',
      userliked: 150,
      comments: '100'),
  Post(
      image: 'assets/images/nora.jpeg',
      title: '21 din mein cases quadruple',
      userid: 'norafateh',
      postimg: 'assets/images/post3.jpg',
      userliked: 500,
      comments: '150'),
  Post(
      image: 'assets/images/selm.jpg',
      title: 'Aaj bajaenge thaali',
      userid: 'selmon',
      postimg: 'assets/images/post4.jpg',
      userliked: 1500,
      comments: '600'),
  Post(
      image: 'assets/images/scar.jpg',
      title: 'Lauria lag gye',
      userid: 'scarlet',
      postimg: 'assets/images/post5.jpg',
      userliked: 750,
      comments: '245'),
  Post(
      image: 'assets/images/robert.jpg',
      title: 'Haa Yeh Karlo Pehle',
      userid: 'tonyboy',
      postimg: 'assets/images/post6.png',
      userliked: 600,
      comments: '100'),
  Post(
      image: 'assets/images/bruce.jpg',
      title: 'Just RELAX',
      userid: 'hulky',
      postimg: 'assets/images/post7.jpg',
      userliked: 1200,
      comments: '300'),
];

class Chatdata {
  final String id;
  final String msg;
  final String img;

  Chatdata({this.id, this.msg, this.img});
}

List<Chatdata> chaadata = [
  Chatdata(
  id: "Gauri Gupta",
  msg: "Aur Biswa kya haal chaal",
  img: "assets/images/dp1.jpg",
),
 Chatdata(
  id: "Aditya Kashyap",
  msg: "Aaj Shaam 5 bje Vegas",
  img: "assets/images/dp2.JPG",
),
 Chatdata(
  id: "Tanya",
  msg: "God of High School Dekh",
  img: "assets/images/dp3.jpg",
),
 Chatdata(
  id: "Hanuman",
  msg: "Jai Shree Ram",
  img: "assets/images/dp4.jpg",
),
 Chatdata(
  id: "Gunjan",
  msg: "Yaar C++ install karwade 😥",
  img: "assets/images/dp5.jpg",
),
 Chatdata(
  id: "Aayan Ahmed",
  msg: "Mai na la rha biryani school mein",
  img: "assets/images/dp6.jpg",
),
 Chatdata(
  id: "Sarthak Gaur",
  msg: "Tam to bade heavy coder nikle",
  img: "assets/images/dp7.jpg",
),
 Chatdata(
  id: "Deepanshu Yadav",
  msg: "Bhai Viva mein help kar dio",
  img: "assets/images/dp8.jpg",
),
 Chatdata(
  id: "Naman Vyas",
  msg: "Meme Bana Doonga",
  img: "assets/images/dp9.jpg",
),
 Chatdata(
  id: "Scarlett Johnson",
  msg: "Love you<3000 ♥",
  img: "assets/images/scar.jpg",
),

];
