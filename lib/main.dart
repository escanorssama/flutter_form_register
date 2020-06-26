import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Coba(),
    );
  }
}
class Coba extends StatefulWidget {
  @override
  _CobaState createState() => _CobaState();
}

class _CobaState extends State<Coba> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ini judul"),
      ),
      body: Container(
        child: GridView.count(crossAxisCount: 2, crossAxisSpacing: 4.0, mainAxisSpacing: 8.0,
        children: [
          InkWell(onTap: (){},child: Image.asset("images/broly.jpg")),
          InkWell(onTap:(){},child: Image.asset("images/beerus.jpg")),
          Image.asset("images/vegito.jpg"),
          Image.asset("images/ultrainsting.jpg"),
          Image.asset("images/zeno.jpg"),
          Image.asset("images/gogeta.jpg"),

        ],),
      ),
    );
  }
}
