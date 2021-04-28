import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    home: Main(),
  ));
}

double H = 1920;
double W = 1080;

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]
    );

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
      backgroundColor: Colors.white60,
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            //height: 400.0,
            height: MediaQuery.of(context).size.height * 0.55,
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
                  SafeArea(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      //height: 400.0,
                      height: MediaQuery.of(context).size.height * 0.52,
                      child: Column(
                          children: [
                            // SizedBox(
                            //   height: (20/(H * 0.5))*MediaQuery.of(context).size.height * 0.5,
                            // ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.menu),
                                  iconSize: 30,
                                  color: Colors.white,
                                  tooltip: 'Menu',
                                ),
                                Spacer(
                                  flex:1,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.settings_outlined),
                                  iconSize: 30,
                                  color: Colors.white,
                                  tooltip: 'Settings',
                                ),
                              ],
                            ),
                            SizedBox(height: (10/(H * 0.5))*MediaQuery.of(context).size.height * 0.5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.email_outlined),
                                  onPressed: () {},
                                  iconSize: 34,
                                  color: Colors.white,
                                  tooltip: 'Mail',
                                ),
                                SizedBox(width: (30/(W * 0.5))*MediaQuery.of(context).size.width * 0.5,),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage('asset\\prof - 5.png'),
                                      radius: 70,
                                      //TODO: portability
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
                                SizedBox(width: (30/(W * 0.5))*MediaQuery.of(context).size.width * 0.5,),
                                IconButton(
                                  icon: Icon(Icons.add_circle_outline_sharp),
                                  onPressed: () {},
                                  iconSize: 34,
                                  color: Colors.white,
                                  tooltip: 'Add Image',
                                ),
                              ],
                            ),
                            SizedBox(height: (20/(H * 0.5))*MediaQuery.of(context).size.height * 0.5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Han Solo',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: (10/(H * 0.5))*MediaQuery.of(context).size.height * 0.5,),
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
                              height: (100/(H * 0.5))*MediaQuery.of(context).size.height * 0.5,
                              indent: (25/(W * 0.5))*MediaQuery.of(context).size.width * 0.5,
                              endIndent: (25/(W * 0.5))*MediaQuery.of(context).size.width * 0.5,
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB((60/(W * 0.5))*MediaQuery.of(context).size.width * 0.5, 0, (60/(W * 0.5))*MediaQuery.of(context).size.width * 0.5, 0),
                              child: IntrinsicHeight(
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
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          'Followers',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
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
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          'Following',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
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
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          'Photos',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
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
                    ),
                  ),
                ]
            ),
          ),
          Expanded(
            child: Container(
              child: ListView(
                //shrinkWrap: true,
                children: [
                  Container(
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.face_retouching_natural,
                                size: 30,
                              ),
                            ),
                            SizedBox(
                              width: (7/(W * 0.5))*MediaQuery.of(context).size.width * 0.5,
                            ),
                            Text(
                              'About Me',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.black,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Hi!\nI am a general \u{1f396} in the Resistance Movement (alteast in the days of the Empire).\nI pilot the Millenium falcon \u{1f680}.\n\u{1f44b} Welcome to my page!',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: (20/(W * 0.5))*MediaQuery.of(context).size.height * 0.5,),
                  Container(
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.star_border_rounded,
                                size: 30,
                              ),
                            ),
                            SizedBox(
                              width: (7/(W * 0.5))*MediaQuery.of(context).size.width * 0.5,
                            ),
                            Text(
                              'Popular',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Divider(),
                        SizedBox(
                          height: (250/(W * 0.5))*MediaQuery.of(context).size.height * 0.5,
                          child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(width: (25/(W * 0.5))*MediaQuery.of(context).size.width * 0.5,),
                                    Image(
                                      image: NetworkImage('https://imgix.bustle.com/uploads/image/2018/5/21/f0fbced7-d13a-4900-9da4-fab47eceaeeb-151204_bb_han-solojpgcroppromo-xlarge2.jpg?w=970&h=546&fit=crop&crop=faces&auto=format&q=70'),
                                    ),
                                    SizedBox(width: (25/(W * 0.5))*MediaQuery.of(context).size.width * 0.5,),
                                    Image(
                                      image: NetworkImage('https://3.bp.blogspot.com/-YsKAxgt4T3g/U-7erCEZBdI/AAAAAAAAEvM/l96CzkzEGSo/s1600/starwarschewbacca-dan-han-solo-ikon-dalam-film-star-wars094.jpeg'),
                                    ),
                                    SizedBox(width: (25/(W * 0.5))*MediaQuery.of(context).size.width * 0.5,),
                                    Image(
                                      image: NetworkImage('https://i.pinimg.com/originals/83/39/38/833938b2349c01fdcf4fab6c431abe42.jpg'),
                                    ),
                                    SizedBox(width: (25/(W * 0.5))*MediaQuery.of(context).size.width * 0.5,),
                                    Image(
                                      image: NetworkImage('https://2.bp.blogspot.com/-sJnXoZSF35c/UoBuQWViM5I/AAAAAAAA0eY/Yj7or79m-60/s1600/1-2-star-wars-impero-colpisce-ancora-trivia.jpg'),
                                    ),
                                    SizedBox(width: (25/(W * 0.5))*MediaQuery.of(context).size.width * 0.5,),
                                    Image(
                                      image: NetworkImage('https://1.bp.blogspot.com/-GI_hMV08Tck/UoB7Q3k1R_I/AAAAAAAA0kU/VXDDC4zyNOg/s1600/41-1-star-wars-impero-colpisce-ancora-trivia.jpg'),
                                    ),
                                    SizedBox(width: (25/(W * 0.5))*MediaQuery.of(context).size.width * 0.5,),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        'View All \u{2192}',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
                                      ),
                                    ),
                                  ],
                                ),
                              ]
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

