import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white54,
          leading: Icon(Icons.align_horizontal_right_rounded),
          actions: [
            Container(
              height: 60,
              width: 60,
              color: Colors.white24,
              child: Center(
                child: Icon(Icons.person),
              ),
            )
          ],
        ),
        body: Container(
          height: 200,
          width: 200,
          color: Colors.deepOrange,
        ),
      ),
    );
  }
}
