// ignore_for_file: deprecated_member_use, unnecessary_new

import 'package:flutter/material.dart';

import 'complain_screen.dart';
import 'history_screen.dart';
import 'konsultasi_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Stack(
              children: [
                SizedBox(
                  width: 720,
                  child: Image.asset(
                    "assets/image/bg.png",
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 40, left: 30, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Care Me",
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Icon(
                            Icons.notifications,
                            size: 40,
                            color: Colors.white,
                          )
                        ],
                      ),
                      const Text(
                        "Knowing your mental health!",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.only(right: 50),
              child: Stack(
                children: [
                  SizedBox(
                    child: Image.asset(
                        "assets/image/banner1.png",
                        width: double.infinity,
                        fit: BoxFit.fill),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 45, left: 200),
                        child: Column(
                          children: const [
                            Text("World Mental Health Day",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "kesehatan mental untuk semua yang terlibat.",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            
            Container(
              margin: EdgeInsets.only(left: 30, bottom: 15),
              child: Text("Layanan Care Me", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 180,
                  width: 140,
                  child: RaisedButton(
                    textColor: Color(0xff000000),
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                            "assets/image/pic.png",
                            width: double.infinity,
                            fit: BoxFit.fill),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Check Up", style: TextStyle(fontSize: 17)),
                        Text(
                          "History",
                          style: TextStyle(fontSize: 17),
                        )
                      ],
                    ),
                    onPressed: () {
                      Route route = MaterialPageRoute(builder: (context) => History());
                      Navigator.push(context, route);
                    },
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 180,
                  width: 140,
                  child: RaisedButton(
                    textColor: Color(0xff000000),
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                            "assets/image/pic.png",
                            width: double.infinity,
                            fit: BoxFit.fill),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Konsultasi",
                          style: TextStyle(fontSize: 17),
                        )
                      ],
                    ),
                    onPressed: () {
                      Route route = MaterialPageRoute(builder: (context) => Psikolog());
                      Navigator.push(context, route);
                    },
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 180,
                  width: 140,
                  child: RaisedButton(
                    textColor: Color(0xff000000),
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                            "assets/image/pic.png",
                            width: double.infinity,
                            fit: BoxFit.fill),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Mental Health", style: TextStyle(fontSize: 17)),
                        Text(
                          "Test",
                          style: TextStyle(fontSize: 17),
                        )
                      ],
                    ),
                    onPressed: () {},
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 180,
                  width: 140,
                  child: RaisedButton(
                    textColor: Color(0xff000000),
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                            "assets/image/pic.png",
                            width: double.infinity,
                            fit: BoxFit.fill),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Customer", style: TextStyle(fontSize: 17)),
                        Text(
                          "Complaint",
                          style: TextStyle(fontSize: 17),
                        )
                      ],
                    ),
                    onPressed: () {
                      Route route = MaterialPageRoute(builder: (context) => complain());
                      Navigator.push(context, route);
                    },
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin :EdgeInsets.only(left: 40, right: 40),
              decoration: BoxDecoration(
                  border: Border.all(width: 2.0, color: Color(0xFF78909c)),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                children: [
                  SizedBox(width: 50,),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      "assets/image/person.png",
                      width: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Column(children: const [
                    Text(
                      '“Your illness is not your identity.',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Your chemistry is not your character.”',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      '~ Diana, S.Psi.',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)
                    ),
                  ]
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),
            Container(
              margin :EdgeInsets.only(left: 40, right: 40),
              decoration: BoxDecoration(
                  border: Border.all(width: 2.0, color: Color(0xFF78909c)),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                children: [
                  SizedBox(width: 50,),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      "assets/image/person.png",
                      width: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Column(children: const [
                    Text(
                      '“Happiness can be found even in the',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'darkest of times, if one only remembers to ',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'turn on the light.”',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      '~ Jessica, S.Psi.',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)
                    ),
                  ]
                  ),
                ],
              ),
            ),

            SizedBox(height: 20,),  
            Container(
              margin: EdgeInsets.only(left: 30, bottom: 15),
              child: Text("Tentang Kami ", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            ),

            Container(
              margin :EdgeInsets.only(left: 40, right: 40),
              decoration: BoxDecoration(
                  border: Border.all(width: 2.0, color: Color(0xFF78909c)),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                children: [
                  SizedBox(width: 50,),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      "assets/image/note.png",
                      width: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Column(
                    children: const [
                      Text(
                      'Survei Kepuasan Pengguna',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    Text(
                      'Berikan kami komentar anda mengenai aplikasi',
                      style:
                          TextStyle(fontSize: 20),
                    ),
                  ]
                  ),
                ],
              ),
            ),

          ]
          ),
        ),
      ),
    );
  }
}
