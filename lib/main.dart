import 'package:flutter/material.dart';

void main() {
  runApp(const Portfolio());
}

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

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
            
            home: const Home(),
        );
    }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text("Hi! I'm InsanePhin"),
                leading: const Icon(Icons.menu_outlined),
                centerTitle: true,
                backgroundColor: Colors.transparent,
                elevation: 0,
            ),
            
            drawer: Drawer(
                child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                        const DrawerHeader(
                            child: Text('Menu'),
                            decoration: BoxDecoration(
                                
                            ),
                        ),
                        ListTile(
                            title: const Text('소개'),
                            onTap: () {
                                Navigator.pop(context);
                            },
                        ),
                        ListTile(
                            title: const Text('프로젝트'),
                            onTap: () {
                                Navigator.pop(context);
                            },
                        ),
                        ListTile(
                            title: const Text('감사한분들'),
                            onTap: () {
                                Navigator.pop(context);
                            },
                        ),
                    ],
                ),
            ),
        
            extendBodyBehindAppBar: true,

            body: const Center(
                child: Text(
                    "Coming Soon", 
                    style: TextStyle(fontSize: 30),
                ),
            ),
        );
    }
}