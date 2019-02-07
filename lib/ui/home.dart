import 'package:flutter/material.dart';

class MyHomeScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(20.0),
      children: <Widget>[
        Tweet(),
        Tweet(),
        Tweet(),
        Tweet(),
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
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 5),
        child: Row(children: [
          ClipOval(
            child: Image.network(
              "https://pbs.twimg.com/profile_images/905593281270005760/UkL_D7ls_400x400.jpg",
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child:
                Column(children: [Text("unchi"), Text("unchi"), TweetLink()]),
          ),
        ]));
  }
}
