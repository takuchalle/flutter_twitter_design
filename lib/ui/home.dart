import 'package:flutter/material.dart';

class TweetData {
  Image image;
  String name;
  String contents;

  TweetData(this.image, this.name, this.contents);
}

final _tweets = [
  TweetData(
      Image.network(
        "https://pbs.twimg.com/profile_images/905593281270005760/UkL_D7ls_400x400.jpg",
        height: 50,
        fit: BoxFit.cover,
      ),
      "aa",
      "aa"),
  TweetData(
      Image.network(
        "https://pbs.twimg.com/profile_images/905593281270005760/UkL_D7ls_400x400.jpg",
        height: 50,
        fit: BoxFit.cover,
      ),
      "bb",
      "bb"),
  TweetData(
      Image.network(
        "https://pbs.twimg.com/profile_images/905593281270005760/UkL_D7ls_400x400.jpg",
        height: 50,
        fit: BoxFit.cover,
      ),
      "cc",
      "cc")
];

class MyHomeScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(20.0),
      children: <Widget>[
        Tweet(data: _tweets[0]),
        Tweet(data: _tweets[0]),
        Tweet(data: _tweets[1]),
        Tweet(data: _tweets[2]),
      ],
    );
  }
}

class TweetLink extends StatelessWidget {
  final _iconSize = 15.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(4),
        child: Row(children: [
          Expanded(child: Icon(Icons.mode_comment, size: _iconSize)),
          Expanded(child: Icon(Icons.repeat, size: _iconSize)),
          Expanded(child: Icon(Icons.favorite, size: _iconSize)),
          Expanded(child: Icon(Icons.inbox, size: _iconSize)),
        ]));
  }
}

class Tweet extends StatelessWidget {
  final TweetData data;

  const Tweet({Key key, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 5),
        child: Row(children: [
          Padding(
              padding: EdgeInsets.all(4),
              child: ClipOval(
                child: this.data.image,
              )),
          Expanded(
            child: Column(children: [
              Align(
                child: Text(
                  this.data.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                alignment: Alignment.centerLeft,
              ),
              Text(this.data.contents),
              TweetLink()
            ]),
          ),
        ]));
  }
}
