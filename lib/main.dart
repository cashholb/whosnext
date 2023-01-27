
// Importing important packages require to connect
// Flutter and Dart
import 'package:flutter/material.dart';

// For firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// Main Function
void main() {
// Giving command to runApp() to run the app.

/* The purpose of the runApp() function is to attach
the given widget to the screen. */
  runApp(const MyApp());
}

// Widget is used to create UI in flutter framework.

/* StatelessWidget is a widget, which does not maintain
any state of the widget. */

/* MyApp extends StatelessWidget and overrides its
build method. */
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title of the application
      title: 'who\'s next',
      // theme of the widget
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      // Inner UI of the application
      home: const MyHomePage(title: 'who\'s next?'),
    );
  }
}

/* This class is similar to MyApp instead it
returns Scaffold Widget */
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Target',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard),
            label: 'Leaderboard',
          )
        ]
      ),

      appBar: AppBar(
        title: Text(title),
      ),
      // Sets the content to the
      // center of the application page
      body: Center(
        child: Column(children:  <Widget>[
          const Text("Target", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
          Image.asset("assets/images/detective-board-cropped.JPG"),
          ElevatedButton(
        
            child: Text("Eliminate?", style: TextStyle(fontSize: 30)),
            onPressed: () {
                print("hello");
              },
            )//function
          ]
        )
      )
    );
  }
}