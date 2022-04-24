import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "InsanePhin's Factory",
      theme: ThemeData(
        fontFamily: 'Sunflower',
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      
      home: Scaffold(
        appBar: AppBar(
          title: Text("InsanePhin's Factory"),
          leading: Icon(Icons.menu_outlined),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        
        extendBodyBehindAppBar: true,

        body: Center(
          child: Text("Coming Soon", style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}