import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  SettingsPageState createState() => SettingsPageState();
}

class SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor:  Color(0xFFF4F4F4),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding:
              const EdgeInsets.only(top: 30.0, left: 16.0, right: 16.0),
              child: Text(
                'Settings',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
              ),
            ),
            Container(
              child: Expanded(
                child: ListView.builder(
                  itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                    if (index == 0) {
                      return Container(
                        margin: EdgeInsets.only(left: 16.0, right: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 0.0),
                              child: Text(
                                'Personal Information',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 14.0),
                              ),
                            ),
                            Card(
                              child: Container(
                                margin: EdgeInsets.only(top: 8.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .stretch,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 16.0),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Text('Long Hoang'),
                                            ),
                                            GestureDetector(
                                              child: Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .only(right: 4.0),
                                                    child: Text('Edit'),
                                                  ),
                                                  Icon(Icons.edit, size: 10.0,)
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 16.0),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Text(
                                                  'longhoang.2984@gmail.com'),
                                            ),
                                            GestureDetector(
                                              child: Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .only(right: 4.0),
                                                    child: Text('Edit'),
                                                  ),
                                                  Icon(Icons.edit, size: 10.0,)
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 16.0),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Text('07 - 05 - 1993'),
                                            ),
                                            GestureDetector(
                                              child: Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .only(right: 4.0),
                                                    child: Text('Edit'),
                                                  ),
                                                  Icon(Icons.edit, size: 10.0,)
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 16.0),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Text('Security'),
                                            ),
                                            GestureDetector(
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(Icons.navigate_next,
                                                    size: 16.0,)
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 16.0),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Text('Manage Accounts'),
                                            ),
                                            GestureDetector(
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(Icons.navigate_next,
                                                    size: 16.0,)
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    }else {
                      return Container(
//                      padding: EdgeInsets.all(16.0),
                      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                        height: 135.0,
                        child: Card(
                          child: Container(
                            margin: EdgeInsets.all(16.0),
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 16.0, right: 20.0),
                                  child: Image.asset('images/ico_gift.png',
                                  height: 73.0, width: 108.0,),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 8.0),
                                        child: Text('Share the\ngift of love',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 14.0
                                            )),
                                      ),
                                      GestureDetector(
                                        child: Container(
                                          width: 135.0,
                                          decoration: BoxDecoration(
                                              color: Color(0xFF65D5E3),
                                            borderRadius: BorderRadius.all(Radius.circular(11.0))
                                          ),
                                          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                                          child: Text(
                                            'SHARE',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 20.0
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}