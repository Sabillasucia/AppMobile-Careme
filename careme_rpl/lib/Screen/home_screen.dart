// ignore_for_file: deprecated_member_use, unnecessary_new

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'complain_screen.dart';
import 'history_screen.dart';
import 'konsultasi_screen.dart';
import 'feedback.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
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
                      margin:
                          const EdgeInsets.only(top: 40, left: 30, right: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Care Me",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          const Text(
                            "Knowing your mental health!",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                ListView(
                  shrinkWrap: true,
                  children: [
                    CarouselSlider(
                        items: [
                          Container(
                            child: Stack(
                              children: [
                                SizedBox(
                                  child: Image.asset(
                                    "assets/image/banner1.png",
                                    width: double.infinity,
                                    fit: BoxFit.fill,
                                    height: 130,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 45, left: 120),
                                      child: Column(
                                        children: const [
                                          Text("World Mental Health Days",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white)),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "kesehatan mental untuk semua.",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://moodsurfing.com/wp-content/uploads/2015/10/unnamed.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://i.ytimg.com/vi/pGkQuLwXUDo/maxresdefault.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://miro.medium.com/max/2676/1*O6st4trneIImocbpKFVqoA.jpeg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://allgoodclub.com/wp-content/uploads/2020/12/Mental-health.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://miro.medium.com/max/2676/1*O6st4trneIImocbpKFVqoA.jpeg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://www.icanotes.com/wp-content/uploads/2018/08/1.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                          height: 130.0,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                          viewportFraction: 0.8,
                        ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, bottom: 15),
                  child: Text(
                    "Layanan Care Me",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 110,
                      width: 120,
                      child: RaisedButton(
                        textColor: Color(0xff000000),
                        color: Colors.white,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Image.asset("assets/image/pic.png",
                                height: 50, fit: BoxFit.fill),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Konsultasi",
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                        onPressed: () {
                          Route route = MaterialPageRoute(
                              builder: (context) => TryChat());
                          Navigator.push(context, route);
                        },
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 110,
                      width: 120,
                      child: RaisedButton(
                        textColor: Color(0xff000000),
                        color: Colors.white,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Image.asset("assets/image/pic.png",
                                height: 50, fit: BoxFit.fill),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Customer", style: TextStyle(fontSize: 15)),
                            Text(
                              "Complaint",
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                        onPressed: () {
                          Route route = MaterialPageRoute(
                              builder: (context) => Complaint());
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
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Container(
                        margin: EdgeInsets.all(15),
                        child: Image.asset(
                          "assets/image/person.png",
                          width: 70,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Column(children: const [
                        SizedBox(height: 5),
                        Text(
                          '“Your illness is not your identity.',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Your chemistry is not your character.”',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('~ Diana, S.Psi.',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold)),
                      ]),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Container(
                        margin: EdgeInsets.all(15),
                        child: Image.asset(
                          "assets/image/person.png",
                          width: 70,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Column(children: const [
                        Text(
                          '“Happiness can be found even in',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'darkest, if only remembers to ',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'turn on the light.”',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('~ Jessica, S.Psi.',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold)),
                      ]),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, bottom: 15),
                  child: Text(
                    "Tentang Kami ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.amber,
                        backgroundImage: AssetImage('assets/image/note.png'),
                        radius: 50,
                      ),
                      title: Text('Survei Kepuasan Pengguna',
                          style: TextStyle(fontSize: 15)),
                      subtitle:
                          Text('Berikan kami komentar anda mengenai aplikasi'),
                      onTap: () {
                        Route route =
                            MaterialPageRoute(builder: (context) => feedback());
                        Navigator.push(context, route);
                      },
                    ),
                  ),
                ),
                SizedBox(height: 30)
              ]),
        )),
      ),
    );
  }
}
