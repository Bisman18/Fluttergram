import 'package:flutter/material.dart';
import 'package:insta/feed.dart';
import 'package:flutter_icons/flutter_icons.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _pages = [
    Feed(),
    Feed(),
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        brightness: Brightness.light,
        centerTitle: true,
        title: Text(
          "Fluttergram",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Feather.camera,
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Feather.tv,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesome.send_o,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (i) {
          setState(() {
            currentPage = i;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Foundation.home), title: Text("Feed")),
          BottomNavigationBarItem(
              icon: Icon(Feather.search), title: Text("Search")),
          BottomNavigationBarItem(
              icon: Icon(Feather.plus_square), title: Text("Upload")),
          BottomNavigationBarItem(
              icon: Icon(Feather.heart), title: Text("Likes")),
          BottomNavigationBarItem(
              icon: Icon(Feather.user), title: Text("Account")),
        ],
      ),
    );
  }
}
