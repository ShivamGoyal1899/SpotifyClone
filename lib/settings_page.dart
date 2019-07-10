import 'package:SpotOn/song_page.dart';
import 'package:flutter/material.dart';

class MySettingsPage extends StatefulWidget {
  @override
  _MySettingsPageState createState() => _MySettingsPageState();
}

class _MySettingsPageState extends State<MySettingsPage> {
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
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Settings',
          style: textStyle
              .merge(TextStyle(fontWeight: FontWeight.w700, fontSize: 16.0)),
        ),
        backgroundColor: Colors.grey[900],
      ),
      body: Container(
        color: Color.fromRGBO(15, 15, 15, 1),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          children: <Widget>[
            SizedBox(height: 30.0),
            Center(
              child: Text(
                'Free Account',
                style: textStyle.merge(
                    TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700)),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0),
              child: Container(
                alignment: Alignment.center,
                height: 40.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(50.0))),
                child: Text(
                  'GO PREMIUM',
                  style: textStyle.merge(
                    TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 60.0,
                        height: 60.0,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/user.jpg'),
                        ),
                      ),
                      SizedBox(width: 20.0),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Shivam Goyal',
                              style: textStyle.merge(
                                TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 28.0,
                                ),
                              ),
                            ),
                            Text(
                              'View Profile',
                              style: textStyle.merge(
                                TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.grey[400],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            SizedBox(height: 30.0),
            Text('Data Saver',
                style: textStyle.merge(
                    TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0))),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Off',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18.0))),
                    Text('Sets your music quality to low and disables Canvas.',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.grey[500]))),
                  ],
                ),
                Switch(
                  value: false,
                  activeColor: Colors.green,
                  activeTrackColor: Colors.green[900],
                  inactiveTrackColor: Colors.grey[700],
                  inactiveThumbColor: Colors.grey[400],
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Text('Playback',
                style: textStyle.merge(
                    TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0))),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Crossfade',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18.0))),
                    Text('Allows you to crossfade between songs',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.grey[500]))),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Off',
                    style: textStyle.merge(TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0,
                        color: Colors.grey[500]))),
                Flexible(
                  flex: 1,
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Colors.grey[800],
                      trackHeight: 2.0,
                      thumbColor: Colors.yellow,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 8.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 12.0),
                    ),
                    child: Slider(
                      value: _value,
                      activeColor: Colors.white,
                      inactiveColor: Colors.grey[800],
                      min: 0.0,
                      max: 12.0,
                      onChanged: (value) {
                        _value = value;
                      },
                    ),
                  ),
                ),
                Text('12 s',
                    style: textStyle.merge(TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0,
                        color: Colors.grey[500]))),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Gapless',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18.0))),
                    Text('Allows gapless playback',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.grey[500]))),
                  ],
                ),
                Switch(
                  value: true,
                  activeColor: Colors.green,
                  activeTrackColor: Colors.green[900],
                  inactiveTrackColor: Colors.grey[700],
                  inactiveThumbColor: Colors.grey[400],
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Allow Explicit Content',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18.0))),
                    Text(
                        'Turn on to play explicit content\nExplixit content is labbled with E tag',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.grey[500]))),
                  ],
                ),
                Switch(
                  value: true,
                  activeColor: Colors.green,
                  activeTrackColor: Colors.green[900],
                  inactiveTrackColor: Colors.grey[700],
                  inactiveThumbColor: Colors.grey[400],
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Show unplayable songs',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18.0))),
                    Text('Show songs that are unplayable.',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.grey[500]))),
                  ],
                ),
                Switch(
                  value: false,
                  activeColor: Colors.green,
                  activeTrackColor: Colors.green[900],
                  inactiveTrackColor: Colors.grey[700],
                  inactiveThumbColor: Colors.grey[400],
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Normalize volume',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18.0))),
                    Text('Set the same volume level for all tracks',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.grey[500]))),
                  ],
                ),
                Switch(
                  value: true,
                  activeColor: Colors.green,
                  activeTrackColor: Colors.green[900],
                  inactiveTrackColor: Colors.grey[700],
                  inactiveThumbColor: Colors.grey[400],
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Device Broadcast Status',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18.0))),
                    Text(
                        'Allow other apps on your device to see what you\nare listening to.',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.grey[500]))),
                  ],
                ),
                Switch(
                  value: false,
                  activeColor: Colors.green,
                  activeTrackColor: Colors.green[900],
                  inactiveTrackColor: Colors.grey[700],
                  inactiveThumbColor: Colors.grey[400],
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Autoplay',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18.0))),
                    Text(
                        'Keep on listening to similar tracks when your\nmusic ends.',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.grey[500]))),
                  ],
                ),
                Switch(
                  value: true,
                  activeColor: Colors.green,
                  activeTrackColor: Colors.green[900],
                  inactiveTrackColor: Colors.grey[700],
                  inactiveThumbColor: Colors.grey[400],
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Canvas',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18.0))),
                    Text(
                        'Play Canvases for the current track. They\'re optimized\nto use very little data and battery.',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.grey[500]))),
                  ],
                ),
                Switch(
                  value: true,
                  activeColor: Colors.green,
                  activeTrackColor: Colors.green[900],
                  inactiveTrackColor: Colors.grey[700],
                  inactiveThumbColor: Colors.grey[400],
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Text('Languages',
                style: textStyle.merge(
                    TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0))),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Languages for music',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18.0))),
                    Text('Choose your preffered languages for music.',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.grey[500]))),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Text('Devices',
                style: textStyle.merge(
                    TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0))),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Connect to a device',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18.0))),
                    Text('Listen to and control SpoOn on your devices',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.grey[500]))),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Show local devices only',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18.0))),
                    Text(
                        'Only show devices on your local WiFi or ethernet in\nthe devices menu',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.grey[500]))),
                  ],
                ),
                Switch(
                  value: false,
                  activeColor: Colors.green,
                  activeTrackColor: Colors.green[900],
                  inactiveTrackColor: Colors.grey[700],
                  inactiveThumbColor: Colors.grey[400],
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Text('Connect to Apps',
                style: textStyle.merge(
                    TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0))),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Navigation',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18.0))),
                    Text('Connect with navigation apps.',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.grey[500]))),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Text('Car view',
                style: textStyle.merge(
                    TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0))),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Turn on automatically',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18.0))),
                    Text(
                        'SpotOn will switch to car view whenever Bluetooth is\ndetected in your car.',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.grey[500]))),
                  ],
                ),
                Switch(
                  value: true,
                  activeColor: Colors.green,
                  activeTrackColor: Colors.green[900],
                  inactiveTrackColor: Colors.grey[700],
                  inactiveThumbColor: Colors.grey[400],
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Text('Social',
                style: textStyle.merge(
                    TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0))),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Private session',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18.0))),
                    Text('Start a private session to listen anonymously.',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.grey[500]))),
                  ],
                ),
                Switch(
                  value: false,
                  activeColor: Colors.green,
                  activeTrackColor: Colors.green[900],
                  inactiveTrackColor: Colors.grey[700],
                  inactiveThumbColor: Colors.grey[400],
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Listening activity',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18.0))),
                    Text('Share what I listen to with my followers on SpotOn.',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.grey[500]))),
                  ],
                ),
                Switch(
                  value: true,
                  activeColor: Colors.green,
                  activeTrackColor: Colors.green[900],
                  inactiveTrackColor: Colors.grey[700],
                  inactiveThumbColor: Colors.grey[400],
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Text('Music Quality',
                style: textStyle.merge(
                    TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0))),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Private session',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18.0))),
                    Text('Higher quality uses more data.',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.grey[500]))),
                  ],
                ),
//                DropdownButton<List>[
//                  DropdownMenuItem(),
//                ],
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Download using cellular',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18.0))),
                    Text('Recommended Setting: Off',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.grey[500]))),
                  ],
                ),
                Switch(
                  value: false,
                  activeColor: Colors.green,
                  activeTrackColor: Colors.green[900],
                  inactiveTrackColor: Colors.grey[700],
                  inactiveThumbColor: Colors.grey[400],
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Equalizer',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18.0))),
                    Text('Open the equalizer control panel.',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.grey[500]))),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Text('Storage',
                style: textStyle.merge(
                    TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0))),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Delete cache',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18.0))),
                    Text(
                        'You can free up storage by deleting your cache.\nYour downloads won\'t be deleted.',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.grey[500]))),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Text('Notifications',
                style: textStyle.merge(
                    TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0))),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Notifications',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18.0))),
                    Text('Choose which notifications to receive.',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.grey[500]))),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Text('Advertisements',
                style: textStyle.merge(
                    TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0))),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('SpotOn Ad Partner Preferences',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18.0))),
                    Text(
                        'Control how ads are targetted to me based on information\ngathered from advertising partners.',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.grey[500]))),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Text('About',
                style: textStyle.merge(
                    TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0))),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Version',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18.0,
                            color: Colors.grey[800]))),
                    Text('1.0.0',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.grey[800]))),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Third-part software',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18.0))),
                    Text('Sweet software that helped us',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.grey[500]))),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Terms and Conditions',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18.0))),
                    Text('all the stuf you need to know.',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.grey[500]))),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Privacy Policy',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18.0))),
                    Text('Important for both of us.',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.grey[500]))),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Support',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18.0))),
                    Text('Get help from us and the community.',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.grey[500]))),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Text('Other',
                style: textStyle.merge(
                    TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0))),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Storage',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18.0))),
                    Text('Choose where to store your music data.',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.grey[500]))),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Log out',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18.0))),
                    Text('You are logged in as Shivam Goyal',
                        style: textStyle.merge(TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.grey[500]))),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.0),
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
