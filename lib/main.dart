import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(MaterialApp(
    home: Main(),
  ));
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),  label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.explore_outlined),  label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
        currentIndex: 2,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.black87,
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              //height: 400.0,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('asset\\millenium falcon.png'),
                      //image: NetworkImage('https://i.pinimg.com/originals/97/8f/86/978f86d109008ed334594e5d9abcf7b0.jpg'),
                      fit: BoxFit.cover
                  )
              ),
                child: Stack(
                  children: [
                    BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 3.5,
                      sigmaY: 3.5,
                    ),
                    child: Container(
                      color: Colors.black.withOpacity(0.27),
                    ),
                  ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.menu),
                              iconSize: 30,
                              color: Colors.white70,
                              tooltip: 'Menu',
                            ),
                            Spacer(
                              flex:1,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.settings_outlined),
                              iconSize: 30,
                              color: Colors.white70,
                              tooltip: 'Settings',
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                icon: Icon(Icons.email_outlined),
                                onPressed: () {},
                                iconSize: 34,
                                color: Colors.white70,
                              tooltip: 'Mail',
                            ),
                            SizedBox(width: 30,),
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                              CircleAvatar(
                                backgroundImage: AssetImage('asset\\prof - 5.png'),
                                radius: 70,
                              ),
                                Positioned(
                                  bottom: -10,
                                  right: -10,
                                  child: FloatingActionButton(
                                      onPressed: () {},
                                    mini: true,
                                    tooltip: 'Change Profile Picture',
                                    child: Icon(
                                        Icons.photo_camera,
                                      size: 20,
                                    ),
                                    backgroundColor: Colors.transparent,
                                    foregroundColor: Colors.white,
                                  ),
                                ),
                             ],
                            ),
                            SizedBox(width: 30,),
                            IconButton(
                              icon: Icon(Icons.add_circle_outline_sharp),
                              onPressed: () {},
                              iconSize: 34,
                              color: Colors.white70,
                              tooltip: 'Add Image',
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                                'Han Solo',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 25,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.white60,
                              size: 16,
                            ),
                            SizedBox(width: 4,),
                            Text(
                                'Tatooine',
                              style: TextStyle(
                                color: Colors.white60,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                          height: 16,
                          indent: 20,
                          endIndent: 20,
                        ),
                        IntrinsicHeight(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                        '33k',
                                      style: TextStyle(
                                        fontSize: 23,
                                        color: Colors.white70,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Followers',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white70,
                                        //fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                VerticalDivider(
                                  color: Colors.white,
                                ),
                                Spacer(),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '2398',
                                      style: TextStyle(
                                        fontSize: 23,
                                        color: Colors.white70,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                        'Following',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white70,
                                        //fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                VerticalDivider(
                                  color: Colors.white,
                                ),
                                Spacer(),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '204',
                                      style: TextStyle(
                                        fontSize: 23,
                                        color: Colors.white70,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Photos',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white70,
                                        //fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ]
                ),
            ),
          ],
        ),
      ),
    );
  }
}

//TODO: disable screen rotation