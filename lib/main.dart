import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeTwo(),
    );
  }
}

////////////1 image///////////
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Icon(Icons.menu),
          actions: [
            Icon(
              Icons.keyboard_arrow_right_outlined,
              size: 30,
            )
          ],
          title: Center(
            child: Text('My App'),
          )),
      backgroundColor: Colors.black,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          alignment: Alignment.center,
          child: Icon(Icons.person_2_outlined, size: 50, color: Colors.white),
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          'Mohamed Elhussieny',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Flutter Devoloper',
          style: TextStyle(color: Colors.white54),
        ),
        SizedBox(
          height: 70,
        ),
        MyWidget('melhussieny', Icons.facebook, Colors.blue),
        MyWidget('@melhussieny', Icons.camera_alt, Colors.red),
        MyWidget('melhussieny00', Icons.tiktok, Colors.white),
        MyWidget('melhussieny', Icons.snapchat, Colors.yellow),
      ]),
    );
  }

  Widget MyWidget(String txt, IconData iconData, Color color) {
    return Padding(
      padding: EdgeInsets.only(left: 40, right: 40, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            iconData,
            size: 30,
            color: color,
          ),
          Text(txt, style: TextStyle(color: Colors.white)),
          Icon(Icons.arrow_forward_ios_outlined, color: Colors.white),
        ],
      ),
    );
  }
}

///////////////////2/////////////////////////////////
class HomeTwo extends StatelessWidget {
  const HomeTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text('Pedometer example app'),
      )),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Container(
          alignment: Alignment.center,
          child: Column(children: [
            Text('Steps taken:', style: TextStyle(fontSize: 40)),
            Text(
              '65',
              style: TextStyle(fontSize: 60),
            ),
          ]),
        ),
        Container(
          alignment: Alignment.center,
          child: Column(children: [
            Text('Steps taken:', style: TextStyle(fontSize: 40)),
            FaIcon(
              FontAwesomeIcons.circleExclamation,
              size: 90,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Pedestrain Status not available',
              style: TextStyle(
                  color: Colors.red, fontSize: 18, fontWeight: FontWeight.bold),
            )
          ]),
        )
      ]),
    );
  }
}
