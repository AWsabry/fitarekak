import 'package:fitarekak_rider_app/screens/Home/home.dart';
import 'package:fitarekak_rider_app/theme.dart';
import 'package:flutter/material.dart';

class RouteScreen extends StatefulWidget {
  final String type;
  const RouteScreen({Key? key, required this.type}) : super(key: key);

  @override
  State<RouteScreen> createState() => _RouteScreenState();
}

class _RouteScreenState extends State<RouteScreen> {
  @override
  Widget build(BuildContext context) {
    print(widget.type);

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
                        ClipRRect(
                          borderRadius: BorderRadius.circular(150),
                          child: SizedBox(
                              width: 100,
                              height: 100,
                              child: Image.network(
                                  'https://scontent.fcai19-3.fna.fbcdn.net/v/t39.30808-6/247858938_1917340321779613_6880823061065223727_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=ugZc7gYQ5i8AX_DOAYq&_nc_ht=scontent.fcai19-3.fna&oh=00_AT_g4beVygfO0Aai4Vfbk2fOXFUY_sAVaxBqbfpaW3GJpg&oe=62617A29')),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text.rich(
                          TextSpan(
                            // with no TextStyle it will have default text style
                            text: "You're now Logged in as : ",
                            children: <TextSpan>[
                              TextSpan(
                                  text: '${widget.type}',
                                  style: TextStyle(
                                      // fontWeight: FontWeight.bold,
                                      color: theme().accentColor)),
                            ],
                          ),
                        )
                        // Text(
                        //   "You're now Logged in as : ${widget.type}",
                        // ),
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
              ListTile(
                leading: Icon(
                  Icons.change_circle,
                  color: theme().accentColor,
                ),
                title: Text(
                  'Change You Status',
                  style: TextStyle(color: theme().scaffoldBackgroundColor),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Home()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(),
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
