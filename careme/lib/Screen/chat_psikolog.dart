import 'package:careme/model/Psikolog_model.dart';
import 'package:flutter/material.dart';

import '../model/chat_model.dart';
import 'konsultasi_screen.dart';

class rujukan_screen extends StatelessWidget {
  final PsikologModel psikologDetail;
  rujukan_screen({Key? key, required this.psikologDetail}) : super(key: key);

  List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello, Good Day!", messageType: "receiver"),
    ChatMessage(messageContent: "is there anything I can help you with?", messageType: "receiver"),
    // ChatMessage(messageContent: "i like to make an appointment with you", messageType: "sender"),
];

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Psikolog();
                }));
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 18,
              ),
              color: Colors.grey,
            ),
            SizedBox(
                width: 40,
                height: 40,
                child: Stack(children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        image: NetworkImage(psikologDetail.image!),
                        fit: BoxFit.contain,
                      )),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.greenAccent[400],
                          border: Border.all(color: Colors.white, width: 2)),
                    ),
                  ),
                ])),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: Text(
                    psikologDetail.nama!,
                    style: const TextStyle(
                      fontSize: 18,
                      fontFamily: "RobotoBold",
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: Text(
                    psikologDetail.status!,
                    style: const TextStyle(
                        fontSize: 15,
                        fontFamily: "RobotoRegular",
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                )
              ],
            )
          ],
        ),
        elevation: 0,
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.phone_outlined),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.videocam_outlined,
                    size: 30,
                  )),
            ],
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: messages.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 10,bottom: 10),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index){
              return Container(
                padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
                child: Align(
                  alignment: (messages[index].messageType == "receiver"?Alignment.topLeft:Alignment.topRight),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: (messages[index].messageType  == "receiver"?Colors.grey.shade200:Colors.blue[200]),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Text(messages[index].messageContent.toString(), style: TextStyle(fontSize: 15),),
                  ),
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  SizedBox(width: 15,),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Write message...",
                        hintStyle: TextStyle(color: Colors.black54),
                        border: InputBorder.none
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  FloatingActionButton(
                    onPressed: (){},
                    child: Icon(Icons.send,color: Colors.white,size: 18,),
                    backgroundColor: Colors.green,
                    elevation: 0,
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