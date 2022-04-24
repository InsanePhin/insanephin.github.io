import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "InsanePhin's Factory",
      darkTheme: ThemeData.dark(),
      
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
          title: Text(widget.title),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        
        extendBodyBehindAppBar: true,

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Coming Soon",
              style: TextStyle(fontSize: 80),
            ),
          ],
        ),
      ),
    );
  }
}