// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xFF36622B),
          title: const Text(
            "Check Up History",
            style: TextStyle(color: Colors.white, fontSize: 27),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const SizedBox(height: 10),
                Material(
                  elevation: 15.0,
                  child: Container(
                    width: 650,
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: const Image(
                              image: AssetImage('assets/image/imghistory.PNG'),
                              fit: BoxFit.cover,
                              height: 70),
                        ),
                        const SizedBox(width: 10),
                        Stack(
                          children: const [
                            Text(
                              'Check Up 5 Januari 2022 ',
                              style: TextStyle(
                                fontFamily: 'Arial',
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                height: 3,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              ' Uploaded',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey, height: 5),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Material(
                  elevation: 15.0,
                  child: Container(
                    width: 650,
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: const Image(
                              image: AssetImage('assets/image/imghistory.PNG'),
                              fit: BoxFit.cover,
                              height: 70),
                        ),
                        const SizedBox(width: 10),
                        Stack(
                          children: const [
                            Text(
                              'Check Up 20 Januari 2022 ',
                              style: TextStyle(
                                fontFamily: 'Arial',
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                height: 3,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              ' Uploaded',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey, height: 5),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Material(
                  elevation: 15.0,
                  child: Container(
                    width: 650,
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: const Image(
                              image:
                                  const AssetImage('assets/image/imghistory.PNG'),
                              fit: BoxFit.cover,
                              height: 70),
                        ),
                        const SizedBox(width: 10),
                        Stack(
                          children: const [
                            Text(
                              'Check Up 5 Februari 2022 ',
                              style: TextStyle(
                                fontFamily: 'Arial',
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                height: 3,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              ' Uploaded',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey, height: 5),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Material(
                  elevation: 15.0,
                  child: Container(
                    width: 650,
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: const Image(
                              image: AssetImage('assets/image/imghistory.PNG'),
                              fit: BoxFit.cover,
                              height: 70),
                        ),
                        const SizedBox(width: 10),
                        Stack(
                          children: const [
                            Text(
                              'Check Up 10 Maret 2022 ',
                              style: TextStyle(
                                fontFamily: 'Arial',
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                height: 3,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              ' Uploaded',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey, height: 5),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Material(
                  elevation: 15.0,
                  child: Container(
                    width: 650,
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: const Image(
                              image: AssetImage('assets/image/imghistory.PNG'),
                              fit: BoxFit.cover,
                              height: 70),
                        ),
                        const SizedBox(width: 10),
                        Stack(
                          children: const [
                            Text(
                              'Check Up 22 Maret 2022 ',
                              style: TextStyle(
                                fontFamily: 'Arial',
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                height: 3,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              ' Uploaded',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey, height: 5),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ])),
        ));
  }
}