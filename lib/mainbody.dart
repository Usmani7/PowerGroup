import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BodyState();
  }
}

class BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return //Expanded(child: 
    Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  ButtonBar(
                    children: <Widget>[
                      Text("Last Chance"),
                      Icon(Icons.local_convenience_store)
                    ],
                  ),
                  ButtonBar(
                    children: <Widget>[
                      Text("You Choose"),
                      Icon(Icons.lightbulb_outline)
                    ],
                  ),
                  Icon(Icons.perm_media),
                  Icon(Icons.phone_android),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: EdgeInsets.all(15.0),
              child: Row(
                children: <Widget>[
                  Container(
                    color: (Colors.blueAccent),
                    child: Column(
                      children: <Widget>[
                        Text("product name"),
                        Container(
                          height: 300.0,
                          width: 100.0,
                          color: Colors.green,
                        ),
                        Container(
                          child: Stack(
                            children: <Widget>[
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: new BoxDecoration(
                            color: Colors.orange,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Text("234")
                            ],
                          ),
                        ),
                        Text("minimum quantity"),
                        Text("Time remaining"),
                        ButtonBar(
                          children: <Widget>[
                            Text("Join Group"),
                            Icon(Icons.group_add)
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.brown,
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.share),
                        Icon(Icons.headset)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      //),
    );
  }
}
