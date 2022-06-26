import 'package:flutter/material.dart';

import 'package:careme_rpl/Screen/viewModel/timeline_handler.dart';
import '../model/timeline_model.dart';

class Agenda_detail extends StatelessWidget {
  final AgendaModel agenda;
  const Agenda_detail({Key? key, required this.agenda}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(children: <Widget>[
          Container(
            width: double.infinity,
            height: 200,
            // ceriga
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(agenda.imageURL),
                    //image: AssetImage(widget.agenda.imageURL),
                    fit: BoxFit.cover)),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    iconSize: 30.0,
                    color: Colors.black,
                    onPressed: () => Navigator.pop(context),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 100),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(50)),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    child: Container(
                      width: 150,
                      height: 7,
                      decoration: BoxDecoration(
                          color: Colors.red[50],
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    agenda.nama_artikel,
                    style: TextStyle(fontSize: 20, height: 1.5),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(agenda.isiArtikel)
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
