import 'package:flutter/material.dart';

void main() {
  runApp(Portfolio());
}

class Portfolio extends StatefulWidget {
  @override
  _PortfoliiState createState() => _PortfoliiState();
}

class _PortfoliiState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "InsanePhin",
      theme: ThemeData(
        fontFamily: 'Sunflower',
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hi! I'm InsanePhin"),
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