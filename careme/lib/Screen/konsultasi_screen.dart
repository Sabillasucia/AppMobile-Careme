// ignore_for_file: prefer_const_constructors, unnecessary_new, deprecated_member_use

import 'package:flutter/material.dart';

class Psikolog extends StatefulWidget {
  const Psikolog({Key? key}) : super(key: key);

  @override
  _PsikologState createState() => _PsikologState();
}

class _PsikologState extends State<Psikolog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFF36622B),
          title: Text(
            "Konsultasi",
            style: TextStyle(color: Colors.white, fontSize: 27),
          ),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 10),
              Material(
                elevation: 15.0,
                child: Container(
                  width: 650,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Image(
                            image: AssetImage('assets/image/psikolog1.PNG'),
                            fit: BoxFit.cover,
                            height: 80,
                          ),
                          Text(
                            'Available',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 15,
                              color: Colors.grey,
                              height: 10,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Stack(
                        children: [
                          Text(
                            'Diana, S.Psi.',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              height: 3,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 60),
                            width: 55,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  width: 1,
                                  color: Color(0xFF36622B),
                                ),
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                Icon(Icons.star, color: Colors.yellow[800]),
                                Text(
                                  '4.0',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                          Text(
                            'Rp. 10.000',
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                height: 6.5),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 30,
                            width: 120,
                            margin: EdgeInsets.only(left: 200, top: 90),
                            child: RaisedButton(
                              color: Color(0xFF36622B),
                              child: Text(
                                "Chat Now",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5.0),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Material(
                elevation: 15.0,
                child: Container(
                  width: 650,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Image(
                            image: AssetImage('assets/image/psikolog1.PNG'),
                            fit: BoxFit.cover,
                            height: 80,
                          ),
                          Text(
                            'Available',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 15,
                              color: Colors.grey,
                              height: 10,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Stack(
                        children: [
                          Text(
                            'Jessica, S.Psi.',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              height: 3,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 60),
                            width: 55,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  width: 1,
                                  color: Color(0xFF36622B),
                                ),
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                Icon(Icons.star, color: Colors.yellow[800]),
                                Text(
                                  '5.0',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                          Text(
                            'Rp. 10.000',
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                height: 6.5),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 30,
                            width: 120,
                            margin: EdgeInsets.only(left: 200, top: 90),
                            child: RaisedButton(
                              color: Color(0xFF36622B),
                              child: Text(
                                "Chat Now",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5.0),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Material(
                elevation: 15.0,
                child: Container(
                  width: 650,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Image(
                            image: AssetImage('assets/image/psikolog2.PNG'),
                            fit: BoxFit.cover,
                            height: 80,
                          ),
                          Text(
                            'Available',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 15,
                              color: Colors.grey,
                              height: 10,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Stack(
                        children: [
                          Text(
                            'Tomi, S.Psi.',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              height: 3,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 60),
                            width: 55,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  width: 1,
                                  color: Color(0xFF36622B),
                                ),
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                Icon(Icons.star, color: Colors.yellow[800]),
                                Text(
                                  '5.0',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                          Text(
                            'Rp. 10.000',
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                height: 6.5),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 30,
                            width: 120,
                            margin: EdgeInsets.only(left: 200, top: 90),
                            child: RaisedButton(
                              color: Color(0xFF36622B),
                              child: Text(
                                "Chat Now",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5.0),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Material(
                elevation: 15.0,
                child: Container(
                  width: 650,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Image(
                            image: AssetImage('assets/image/psikolog1.PNG'),
                            fit: BoxFit.cover,
                            height: 80,
                          ),
                          Text(
                            'Unavailable',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 15,
                              color: Colors.grey,
                              height: 10,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Stack(
                        children: [
                          Text(
                            'Anna, S.Psi.',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              height: 3,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 60),
                            width: 55,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  width: 1,
                                  color: Color(0xFF36622B),
                                ),
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                Icon(Icons.star, color: Colors.yellow[800]),
                                Text(
                                  '4.0',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                          Text(
                            'Rp. 10.000',
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                height: 6.5),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 30,
                            width: 120,
                            margin: EdgeInsets.only(left: 200, top: 90),
                            child: RaisedButton(
                              color: Color(0xFF36622B),
                              child: Text(
                                "Chat Now",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5.0),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Material(
                elevation: 15.0,
                child: Container(
                  width: 650,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Image(
                            image: AssetImage('assets/image/psikolog2.PNG'),
                            fit: BoxFit.cover,
                            height: 80,
                          ),
                          Text(
                            'Unavailable',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 15,
                              color: Colors.grey,
                              height: 10,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Stack(
                        children: [
                          Text(
                            'Timo, S.Psi.',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              height: 3,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 60),
                            width: 55,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  width: 1,
                                  color: Color(0xFF36622B),
                                ),
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                Icon(Icons.star, color: Colors.yellow[800]),
                                Text(
                                  '4.0',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                          Text(
                            'Rp. 10.000',
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                height: 6.5),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 30,
                            width: 120,
                            margin: EdgeInsets.only(left: 200, top: 90),
                            child: RaisedButton(
                              color: Color(0xFF36622B),
                              child: Text(
                                "Chat Now",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5.0),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ])));
  }
}