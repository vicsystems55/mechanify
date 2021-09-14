import 'package:flutter/material.dart';
import 'package:mechanify/screens/splash.dart';
import 'package:mechanify/screens/home.dart';
import 'package:mechanify/screens/login.dart';
import 'package:mechanify/screens/register.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Colors.black,
        textSelectionTheme:
            TextSelectionThemeData(cursorColor: Colors.deepOrange),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Mechanify',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => SplashScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/login': (context) => Login(),
        '/register': (context) => Register(),
        '/home': (context) => Home(),
      },
    );
  }
}
