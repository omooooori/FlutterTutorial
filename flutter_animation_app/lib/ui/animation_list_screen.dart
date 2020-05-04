import 'package:flutter/material.dart';
import 'package:flutter_animation_app/animation/easing_animation_widget.dart';
import 'package:flutter_animation_app/animation/offset_delay_animation_widget.dart';
import 'package:flutter_animation_app/animation/parent_animation_widget.dart';
import 'package:flutter_animation_app/animation/transformation_animation_widget.dart';
import 'package:flutter_animation_app/animation/value_change_animation_widget.dart';
import 'package:flutter_animation_app/animation/masking_animation_widget.dart';
import 'package:flutter_animation_app/animation/spring_feeling_animation_widget.dart';

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
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => new EasingAnimationWidget()
                ));
              },
            ),
            ListTile(
              title: Text("Offset & Delay animation"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => new OffsetDelayAnimationWidget()
                ));
              },
            ),
            ListTile(
              title: Text("Parenting animation"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => new ParentingAnimationWidget()
                ));
              },
            ),
            ListTile(
              title: Text("Transformation animation"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => new TransformationAnimationWidget()
                ));
              },
            ),
            ListTile(
              title: Text("Value Change animation"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => new ValueChangeAnimationWidget()
                ));
              },
            ),
            ListTile(
              title: Text("Masking animation"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => new MaskingAnimationWidget()
                ));
              },
            ),
            ListTile(
              title: Text("Physics animation"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => new SpringFreeFallingAnimation()
                ));
              },
            )
          ],
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}