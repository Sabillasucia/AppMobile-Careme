import 'package:flutter/material.dart';

class Timeline extends StatefulWidget {
  @override
  _TimelineState createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF36622B),
        title: Text("Care Me",
            style: TextStyle(color: Colors.white, fontSize: 27)),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications),
          )
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100,
                    height: 35,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xff1b5e20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "All",
                        style: TextStyle(
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 35,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xffffffff),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Color(0xff1b5e20), width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Self Parenting",
                        style: TextStyle(
                          color: Color(0xff1b5e20),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 35,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xffffffff),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Color(0xff1b5e20), width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "MBTI",
                        style: TextStyle(
                          color: Color(0xff1b5e20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: Color(0xFF78909c)),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset("assets/img/image2.png"),
                    ),
                    SizedBox(width: 10),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            width: 100,
                            height: 30,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Color(0xffffffff),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Color(0xff1b5e20), width: 2),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "MBTI",
                                style: TextStyle(
                                  color: Color(0xff1b5e20),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Yuk Cari tahu Karakter MBTI-mu!',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text('Penasaran? Simak Disini!',
                              style: TextStyle(fontSize: 16)),
                        ]),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: Color(0xFF78909c)),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset("assets/img/lala.png"),
                    ),
                    SizedBox(width: 10),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            width: 150,
                            height: 30,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Color(0xffffffff),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Color(0xff1b5e20), width: 2),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Self Attention",
                                style: TextStyle(
                                  color: Color(0xff1b5e20),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Cara Tingkatkan Rasa Percaya diri!',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            'Penasaran? Simak Disini!',
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.start,
                          ),
                        ]),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}