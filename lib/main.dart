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
      
      home: Scaffold(
        appBar: AppBar(
          title: Text("StatefulWidget"),
          centerTitle: true,
        ),

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