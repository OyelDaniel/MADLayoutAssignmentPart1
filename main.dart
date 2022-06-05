import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  HomePage createState() => HomePage();
}

class HomePage extends State<MainPage> {
  bool _wifiOn = false;
  bool _airOn = false;
  bool _alarmOn = false;
  bool _cameraOn = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MADLayoutAssignmentPart1',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("My Home"),
            ),
            body: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                SizedBox.fromSize(
                  size: Size(56, 56), // button width and height
                  child: ClipRect(
                    child: Material(
                      color: Colors.blue, // button color

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.wifi),
                            color: Colors.white,
                            iconSize: 55,
                            tooltip: 'Toggle Wifi',
                            onPressed: () {
                              setState(() {
                                if (_wifiOn == false) {
                                  print('ON');
                                } else {
                                  print('OFF');
                                }
                                _wifiOn = !_wifiOn;
                              });
                            },
                          ),
                          Text('Wifi On : $_wifiOn',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox.fromSize(
                  size: Size(56, 56), // button width and height
                  child: ClipRect(
                    child: Material(
                      color: Colors.green, // button color

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.ac_unit),
                            color: Colors.white,
                            iconSize: 55,
                            tooltip: 'Toggle Ac',
                            onPressed: () {
                              setState(() {
                                if (_airOn == false) {
                                  print('ON');
                                } else {
                                  print('OFF');
                                }
                                _airOn = !_airOn;
                              });
                            },
                          ),
                          Text('AC On : $_airOn',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox.fromSize(
                  size: Size(56, 56), // button width and height
                  child: ClipRect(
                    child: Material(
                      color: Colors.yellow, // button color

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.alarm),
                            color: Colors.white,
                            iconSize: 55,
                            tooltip: 'Toggle Ac',
                            onPressed: () {
                              setState(() {
                                if (_alarmOn == false) {
                                  print('ON');
                                } else {
                                  print('OFF');
                                }
                                _alarmOn = !_alarmOn;
                              });
                            },
                          ),
                          Text('Alarm On : $_alarmOn',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox.fromSize(
                  size: Size(56, 56), // button width and height
                  child: ClipRect(
                    child: Material(
                      color: Colors.red, // button color

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.camera),
                            color: Colors.white,
                            iconSize: 55,
                            tooltip: 'Toggle Camera',
                            onPressed: () {
                              setState(() {
                                if (_cameraOn == false) {
                                  print('ON');
                                } else {
                                  print('OFF');
                                }
                                _cameraOn = !_cameraOn;
                              });
                            },
                          ),
                          Text('Camera On : $_cameraOn',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )));
  }
}