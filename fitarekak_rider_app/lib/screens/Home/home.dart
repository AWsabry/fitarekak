import 'package:fitarekak_rider_app/theme.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        width: 275,
        child: Drawer(
          backgroundColor: theme().canvasColor,
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: theme().scaffoldBackgroundColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            height: 100,
                            width: 100,
                            child: Image.asset('assets/images/user.png')),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Abdelrahman Wael',
                          style: TextStyle(color: theme().primaryColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home_outlined,
                  color: theme().accentColor,
                ),
                title: Text(
                  'Profile',
                  style: TextStyle(color: theme().scaffoldBackgroundColor),
                ),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.supervised_user_circle,
                  color: theme().accentColor,
                ),
                title: Text(
                  'Orders',
                  style: TextStyle(color: theme().scaffoldBackgroundColor),
                ),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
          title: const Text(
        'Hello User',
        style: TextStyle(color: Colors.black),
      )),
      body: WillPopScope(
        onWillPop: () async => false,
        child: Center(
          child: Text(
            'Maps',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: theme().primaryColor,
                fontSize: 36),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                // Animate a bottom drawer
              },
            ),
            IconButton(
              icon: Icon(Icons.info),
              onPressed: () {
                // Animate a bottom drawer
              },
            ),
          ],
        ),
      ),
    );
  }
}
