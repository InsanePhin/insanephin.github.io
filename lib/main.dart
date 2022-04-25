import 'package:flutter/material.dart';

void main() {
  runApp(Portfolio());
}

class Portfolio extends StatelessWidget {
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
            
            home: Home(),
        );
    }
}

class Home extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text("Hi! I'm InsanePhin"),
                leading: Icon(Icons.menu_outlined),
                centerTitle: true,
                backgroundColor: Colors.transparent,
                elevation: 0,
            ),
            
            drawer: Drawer(
                child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                        DrawerHeader(
                            child: Text('Menu'),
                            decoration: BoxDecoration(
                                
                            ),
                        ),
                        ListTile(
                            title: Text('소개'),
                            onTap: () {
                                Navigator.pop(context);
                            },
                        ),
                        ListTile(
                            title: Text('프로젝트'),
                            onTap: () {
                                Navigator.pop(context);
                            },
                        ),
                        ListTile(
                            title: Text('감사한분들'),
                            onTap: () {
                                Navigator.pop(context);
                            },
                        ),
                    ],
                ),
            ),
        
            extendBodyBehindAppBar: true,

            body: Center(
                child: Text(
                    "Coming Soon", 
                    style: TextStyle(fontSize: 30),
                ),
            ),
        );
    }
}