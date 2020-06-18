import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(BallPage());

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue,
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ball_num = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          onPressed: (){
            setState(() {
              ball_num = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$ball_num.png'),
        ),
      ),
    );
  }
}
