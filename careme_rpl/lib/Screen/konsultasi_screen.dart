// ignore_for_file: prefer_const_constructors, unnecessary_new, deprecated_member_use

import 'coba.dart';
import 'package:careme_rpl/Screen/viewModel/Psikologhandler.dart';
import 'package:flutter/material.dart';
import 'chat_psikolog.dart';
import 'package:provider/provider.dart';
import 'package:kommunicate_flutter/kommunicate_flutter.dart';

class TryChat extends StatefulWidget {
  const TryChat({Key? key}) : super(key: key);

  @override
  _TryChatState createState() => _TryChatState();
}

class _TryChatState extends State<TryChat> {
  bool isGet = true;

  @override
  void didChangeDependencies() {
    Provider.of<ViewModelPsikolog>(context, listen: false).getPsikologs();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final psikologProvider = Provider.of<ViewModelPsikolog>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF36622B),
        title: Text(
          "Konsultasi",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: ListView.builder(
              itemCount: psikologProvider.lspsikolog.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => rujukan_screen(psikologDetail: psikologProvider.lspsikolog[index],)));
                  },
                  child: Expanded(
                    child: Material(
                      elevation: 15.0,
                      child: Container(
                        width: double.infinity,
                        height: 130,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Image(
                                  image: NetworkImage(
                                      psikologProvider.lspsikolog[index].image),
                                  fit: BoxFit.cover,
                                  height: 50,
                                ),
                                Text(
                                  psikologProvider.lspsikolog[index].status,
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
                                  psikologProvider.lspsikolog[index].nama,
                                  style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 18,
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
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.star,
                                          color: Colors.yellow[800]),
                                      Text(
                                        psikologProvider
                                            .lspsikolog[index].rating
                                            .toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                ),
                                Text(
                                  psikologProvider.lspsikolog[index].harga
                                      .toString(),
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      height: 9),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  height: 30,
                                  width: 80,
                                  margin: EdgeInsets.only(left: 145, top: 90),
                                  child: RaisedButton(
                                    color: Color(0xFF36622B),
                                    child: Text(
                                      "Chat Now",
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.white),
                                    ),
                                    shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(5.0),
                                    ),
                                    onPressed: () {
                                      // Route route = MaterialPageRoute(builder: (context) => Coba());
                                      // Navigator.push(context, route);
                                      // Navigator.of(context).push(MaterialPageRoute(builder: (context) => rujukan_screen(psikologDetail: psikologProvider.lspsikolog[index],)));
                                      dynamic conversationObject = {
                                        'appId':
                                            'a1994bbbf20fecbff0854637c915efd5',
                                      };

                                      KommunicateFlutterPlugin
                                              .buildConversation(
                                                  conversationObject)
                                          .then((clientConversationId) {
                                        print(
                                            "Conversation builder success : " +
                                                clientConversationId
                                                    .toString());
                                      }).catchError((error) {
                                        print("Conversation builder error : " +
                                            error.toString());
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              })),
    );
  }
}
