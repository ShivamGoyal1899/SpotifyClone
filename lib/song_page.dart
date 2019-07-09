import 'package:flutter/material.dart';

class MySongPage extends StatefulWidget {
  @override
  _MySongPageState createState() => _MySongPageState();
}

class _MySongPageState extends State<MySongPage> {
  @override
  Widget build(BuildContext context) {
    var textColor = Color.fromRGBO(250, 250, 250, 0.95);
    var textStyle =
        TextStyle(fontFamily: 'PT Sans', color: textColor, letterSpacing: 0.2);
    return Scaffold(
      body: Container(
        padding:
            EdgeInsets.only(left: 30.0, right: 30.0, top: 40.0, bottom: 20.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.05, 0.35, 0.95],
            colors: <Color>[
              Color.fromRGBO(30, 30, 30, 1),
              Color.fromRGBO(45, 45, 45, 1),
              Color.fromRGBO(15, 15, 15, 1),
            ],
            tileMode: TileMode.clamp,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: textColor,
                      size: 24,
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'PLAYING FROM PLAYLIST',
                        style: textStyle.merge(
                          TextStyle(fontSize: 10),
                        ),
                      ),
                      SizedBox(height: 2.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white54,
                    size: 24,
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              Card(
                elevation: 8.0,
                child: Container(
                  constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height >= 365 ? MediaQuery.of(context).size.height - 365 : 0),
                    child: Image.asset('assets/images/cover.jpg')),
              ),
              SizedBox(height: 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Demons',
                          style: textStyle.merge(TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.w700))),
                      SizedBox(height: 1.0),
                      Text('Imagine Dragons',
                          style: textStyle.merge(TextStyle(
                              fontSize: 16.0, color: Colors.white54))),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.favorite_border,
                        color: Colors.white54,
                        size: 30.0,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 25.0),
              Row(
                children: <Widget>[
                  Container(
                    height: 1.5,
                    color: Colors.white54,
                  ),
                  Flexible(
                    child: Container(
                      height: 3.0,
                      color: Colors.white12,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '1:27',
                    style: textStyle.merge(TextStyle(
                        fontSize: 12.0,
                        color: Color.fromRGBO(250, 250, 250, 0.45))),
                  ),
                  Text(
                    '-2:16',
                    style: textStyle.merge(TextStyle(
                        fontSize: 12.0,
                        color: Color.fromRGBO(250, 250, 250, 0.45))),
                  ),
                ],
              ),
              SizedBox(height: 5.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.shuffle,
                    color: Colors.white54,
                  ),
                  Icon(
                    Icons.skip_previous,
                    color: textColor,
                    size: 40.0,
                  ),
                  Icon(
                    Icons.play_circle_filled,
                    color: textColor,
                    size: 70.0,
                  ),
                  Icon(
                    Icons.skip_next,
                    color: textColor,
                    size: 40.0,
                  ),
                  Icon(
                    Icons.repeat,
                    color: Colors.white54,
                  ),
                ],
              ),
              SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.devices,
                    color: Colors.green,
                    size: 24.0,
                  ),
                  Icon(
                    Icons.playlist_play,
                    color: Colors.white54,
                    size: 24.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
