import 'song_page.dart';
import 'package:flutter/material.dart';

class MyPlaylistPage extends StatefulWidget {
  @override
  _MyPlaylistPageState createState() => _MyPlaylistPageState();
}

class _MyPlaylistPageState extends State<MyPlaylistPage> {
  int _cIndex = 0;

  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _value = 4.0;
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
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          children: <Widget>[
            SizedBox(height: 40.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(Icons.keyboard_arrow_left,
                          color: textColor, size: 26)),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                          onTap: () {},
                          child: Icon(Icons.favorite_border,
                              color: textColor, size: 26)),
                      SizedBox(width: 15.0),
                      GestureDetector(
                          onTap: () {},
                          child: Icon(Icons.more_vert,
                              color: textColor, size: 26)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Column(
              children: <Widget>[
                Container(
                    width: 200.0,
                    height: 200.0,
                    child: Image.asset('assets/images/gallery1.jpg')),
              ],
            ),
            SizedBox(height: 20.0),
            Center(
              child: Text(
                'Imagine Dragons',
                style: textStyle.merge(
                    TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700)),
              ),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Text(
                'BY SPOTIFY • 7,284 LIKES',
                style: textStyle.merge(TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[500])),
              ),
            ),
            SizedBox(height: 10.0),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => MySongPage()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 130.0),
                child: Container(
                  alignment: Alignment.center,
                  height: 40.0,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(50.0))),
                  child: Text(
                    'PLAY',
                    style: textStyle.merge(
                      TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => MySongPage()));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Demons',
                          style: textStyle.merge(TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18.0))),
                      Text('Imagine Dragons',
                          style: textStyle.merge(TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0,
                              color: Colors.grey[500]))),
                    ],
                  ),
                ),
                Row(children: <Widget>[
                  Icon(
                    Icons.favorite_border,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Icon(
                    Icons.remove_circle_outline,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                ]),
              ],
            ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => MySongPage()));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Demons',
                          style: textStyle.merge(TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18.0))),
                      Text('Imagine Dragons',
                          style: textStyle.merge(TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0,
                              color: Colors.grey[500]))),
                    ],
                  ),
                ),
                Row(children: <Widget>[
                  Icon(
                    Icons.favorite_border,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Icon(
                    Icons.remove_circle_outline,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                ]),
              ],
            ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => MySongPage()));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Demons',
                          style: textStyle.merge(TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18.0))),
                      Text('Imagine Dragons',
                          style: textStyle.merge(TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0,
                              color: Colors.grey[500]))),
                    ],
                  ),
                ),
                Row(children: <Widget>[
                  Icon(
                    Icons.favorite_border,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Icon(
                    Icons.remove_circle_outline,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                ]),
              ],
            ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => MySongPage()));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Demons',
                          style: textStyle.merge(TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18.0))),
                      Text('Imagine Dragons',
                          style: textStyle.merge(TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0,
                              color: Colors.grey[500]))),
                    ],
                  ),
                ),
                Row(children: <Widget>[
                  Icon(
                    Icons.favorite_border,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Icon(
                    Icons.remove_circle_outline,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                ]),
              ],
            ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => MySongPage()));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Demons',
                          style: textStyle.merge(TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18.0))),
                      Text('Imagine Dragons',
                          style: textStyle.merge(TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0,
                              color: Colors.grey[500]))),
                    ],
                  ),
                ),
                Row(children: <Widget>[
                  Icon(
                    Icons.favorite_border,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Icon(
                    Icons.remove_circle_outline,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                ]),
              ],
            ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => MySongPage()));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Demons',
                          style: textStyle.merge(TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18.0))),
                      Text('Imagine Dragons',
                          style: textStyle.merge(TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0,
                              color: Colors.grey[500]))),
                    ],
                  ),
                ),
                Row(children: <Widget>[
                  Icon(
                    Icons.favorite_border,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Icon(
                    Icons.remove_circle_outline,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                ]),
              ],
            ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => MySongPage()));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Demons',
                          style: textStyle.merge(TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18.0))),
                      Text('Imagine Dragons',
                          style: textStyle.merge(TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0,
                              color: Colors.grey[500]))),
                    ],
                  ),
                ),
                Row(children: <Widget>[
                  Icon(
                    Icons.favorite_border,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Icon(
                    Icons.remove_circle_outline,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                ]),
              ],
            ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => MySongPage()));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Demons',
                          style: textStyle.merge(TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18.0))),
                      Text('Imagine Dragons',
                          style: textStyle.merge(TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0,
                              color: Colors.grey[500]))),
                    ],
                  ),
                ),
                Row(children: <Widget>[
                  Icon(
                    Icons.favorite_border,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Icon(
                    Icons.remove_circle_outline,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                ]),
              ],
            ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => MySongPage()));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Demons',
                          style: textStyle.merge(TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18.0))),
                      Text('Imagine Dragons',
                          style: textStyle.merge(TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0,
                              color: Colors.grey[500]))),
                    ],
                  ),
                ),
                Row(children: <Widget>[
                  Icon(
                    Icons.favorite_border,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Icon(
                    Icons.remove_circle_outline,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                ]),
              ],
            ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => MySongPage()));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Demons',
                          style: textStyle.merge(TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18.0))),
                      Text('Imagine Dragons',
                          style: textStyle.merge(TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0,
                              color: Colors.grey[500]))),
                    ],
                  ),
                ),
                Row(children: <Widget>[
                  Icon(
                    Icons.favorite_border,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Icon(
                    Icons.remove_circle_outline,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                ]),
              ],
            ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => MySongPage()));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Demons',
                          style: textStyle.merge(TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18.0))),
                      Text('Imagine Dragons',
                          style: textStyle.merge(TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0,
                              color: Colors.grey[500]))),
                    ],
                  ),
                ),
                Row(children: <Widget>[
                  Icon(
                    Icons.favorite_border,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Icon(
                    Icons.remove_circle_outline,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                ]),
              ],
            ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => MySongPage()));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Demons',
                          style: textStyle.merge(TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18.0))),
                      Text('Imagine Dragons',
                          style: textStyle.merge(TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0,
                              color: Colors.grey[500]))),
                    ],
                  ),
                ),
                Row(children: <Widget>[
                  Icon(
                    Icons.favorite_border,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Icon(
                    Icons.remove_circle_outline,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.grey[600],
                    size: 26.0,
                  ),
                ]),
              ],
            ),
            SizedBox(height: 30.0),
            Center(
              child: Text(
                'You might also like',
                style: textStyle.merge(
                    TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700)),
              ),
            ),
            SizedBox(height: 20.0),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    MyPlaylistPage()));
                      },
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 160.0,
                            height: 160.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/gallery4.jpg'),
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
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    MyPlaylistPage()));
                      },
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 160.0,
                            height: 160.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/gallery3.jpg'),
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
                  ],
                ),
                SizedBox(height: 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    MyPlaylistPage()));
                      },
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 160.0,
                            height: 160.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/gallery4.jpg'),
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
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    MyPlaylistPage()));
                      },
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 160.0,
                            height: 160.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/gallery5.jpg'),
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
                  ],
                ),
                SizedBox(height: 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    MyPlaylistPage()));
                      },
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 160.0,
                            height: 160.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/gallery6.jpg'),
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
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    MyPlaylistPage()));
                      },
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 160.0,
                            height: 160.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/gallery2.jpg'),
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
                  ],
                ),
                SizedBox(height: 40.0),
              ],
            )
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
                    MaterialPageRoute(
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
                  title: Text('Home'),
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.search,
                    ),
                    title: Text('Search')),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.playlist_play,
                    ),
                    title: Text('Your Library')),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.verified_user,
                    ),
                    title: Text('Premium')),
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
