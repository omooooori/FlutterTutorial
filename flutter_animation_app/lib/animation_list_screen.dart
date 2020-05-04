import 'package:flutter/material.dart';

class AnimationListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: new Text("Animation List Screen"),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Easing animation"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute());
              },
            ),
            ListTile(
              title: Text("Offset & Delay animation"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute());
              },
            ),
            ListTile(
              title: Text("Parenting animation"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute());
              },
            ),
            ListTile(
              title: Text("Transformation animation"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute());
              },
            ),
            ListTile(
              title: Text("Value Change animation"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute());
              },
            ),
            ListTile(
              title: Text("Masking animation"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute());
              },
            ),
            ListTile(
              title: Text("Physics animation"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute());
              },
            )
          ],
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}