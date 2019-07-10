import 'package:SpotOn/playlist_page.dart';
import 'package:SpotOn/song_page.dart';
import 'package:flutter/material.dart';
import 'settings_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _cIndex = 0;

  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var textColor = Color.fromRGBO(250, 250, 250, 0.95);
    var textStyle =
        TextStyle(fontFamily: 'PT Sans', color: textColor, letterSpacing: 0.2);
    return Scaffold(
      body: Container(
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
        child: ListView(
          children: <Widget>[
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    MySettingsPage()));
                      },
                      child: Icon(Icons.settings, color: textColor, size: 24)),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Text(
                'Recently played',
                style: textStyle.merge(
                    TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700)),
              ),
            ),
            SizedBox(height: 10.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  MyPlaylistPage()));
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                        SizedBox(height: 3.0),
                        Text(
                          'Imagine Dragons',
                          style: textStyle.merge(TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.w700)),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        MyPlaylistPage()));
                          },
                          child: Container(
                            width: 150.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/cover.jpg'),
                              ),
                            ),
                            margin: EdgeInsets.symmetric(horizontal: 7.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 60.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Made for you',
                style: textStyle.merge(
                    TextStyle(fontSize: 26.0, fontWeight: FontWeight.w700)),
              ),
            ),
            SizedBox(height: 20.0),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => MyPlaylistPage()));
              },
              child: Column(
                children: <Widget>[
                  Container(
                      width: 260.0,
                      height: 260.0,
                      child: Image.asset('assets/images/cover.jpg')),
                  SizedBox(height: 5.0),
                  Text(
                    'Dimitri Vegas & Like Mike',
                    style: textStyle.merge(
                        TextStyle(color: Colors.grey[500], fontSize: 16.0, fontWeight: FontWeight.w600)),
                  )
                ],
              ),
            ),
            SizedBox(height: 20.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 60.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Popular and trending',
                style: textStyle.merge(
                    TextStyle(fontSize: 26.0, fontWeight: FontWeight.w700)),
              ),
            ),
            SizedBox(height: 20.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 60.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Recommended for you',
                style: textStyle.merge(
                    TextStyle(fontSize: 26.0, fontWeight: FontWeight.w700)),
              ),
            ),
            SizedBox(height: 20.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 60.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Editor\'s picks',
                style: textStyle.merge(
                    TextStyle(fontSize: 26.0, fontWeight: FontWeight.w700)),
              ),
            ),
            SizedBox(height: 20.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 60.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'English new releases',
                style: textStyle.merge(
                    TextStyle(fontSize: 26.0, fontWeight: FontWeight.w700)),
              ),
            ),
            SizedBox(height: 20.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 60.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Global new releases',
                style: textStyle.merge(
                    TextStyle(fontSize: 26.0, fontWeight: FontWeight.w700)),
              ),
            ),
            SizedBox(height: 20.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 60.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Best of artists',
                style: textStyle.merge(
                    TextStyle(fontSize: 26.0, fontWeight: FontWeight.w700)),
              ),
            ),
            SizedBox(height: 20.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyPlaylistPage()));
                        },
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cover.jpg'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'Imagine Dragons',
                        style: textStyle.merge(TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 110,
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => MySongPage()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[900],
                height: 54,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(Icons.favorite_border, color: Colors.white),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text('Demons',
                                  style: textStyle.merge(TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13.0))),
                              Text(' • ',
                                  style: textStyle.merge(TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13.0,
                                      color: Colors.grey[400]))),
                              Text('Imagine Dragons',
                                  style: textStyle.merge(TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13.0,
                                      color: Colors.grey[400]))),
                            ],
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.devices,
                                color: Colors.white,
                                size: 13.0,
                              ),
                              Text('  Devices Available',
                                  style: textStyle
                                      .merge(TextStyle(fontSize: 13.0)))
                            ],
                          ),
                        ],
                      ),
                      Icon(Icons.play_arrow, color: Colors.white),
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              height: 0.0,
              color: Colors.black,
            ),
            BottomNavigationBar(
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey[400],
              currentIndex: _cIndex,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.grey[900],
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  title: new Text('Home'),
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.search,
                    ),
                    title: new Text('Search')),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.playlist_play,
                    ),
                    title: new Text('Your Library')),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.verified_user,
                    ),
                    title: new Text('Premium')),
              ],
              onTap: (index) {
                _incrementTab(index);
              },
            ),
          ],
        ),
      ),
    );
  }
}
