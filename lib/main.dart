import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StatefulWidget',
      
      theme: ThemeData(
        fontFamily: 'Sunflower',
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        accentColorBrightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: Colors.blueGrey,
        primarySwatch: Colors.blueGrey,
        scaffoldBackgroundColor: Colors.white,
      ),
      
      home: Scaffold(
        appBar: AppBar(
          title: Text("InsanePhin's Factory"),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        
        extendBodyBehindAppBar: true,

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$count",
              style: TextStyle(fontSize: 80),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        count--;
                      });
                    },
                    child: Text('-')),
                FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        count++;
                      });
                    },
                    child: Text('+'))
              ],
            )
          ],
        ),
      ),
    );
  }
}