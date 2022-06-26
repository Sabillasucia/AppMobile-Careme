import 'package:careme_rpl/screen/search.dart';
import 'package:careme_rpl/screen/timeline_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:careme_rpl/model/model_timeline_database.dart';
import 'package:careme_rpl/Screen/viewModel/timeline_handler.dart';
import 'package:provider/provider.dart';

class Timeline extends StatefulWidget {
  const Timeline({Key? key}) : super(key: key);

  @override
  _TimelineState createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  bool isGet = true;
  @override
  void didChangeDependencies() {
    Provider.of<ViewModelTimeline>(context, listen: false).getAgendas();
    super.didChangeDependencies();
  }

  List<String> navBarItem = ["All", "Self Parenting", "MBTI"];
  @override
  Widget build(BuildContext context) {
    final TimelineProvider = Provider.of<ViewModelTimeline>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF36622B),
        title: Text("Care Me",
            style: TextStyle(color: Colors.white, fontSize: 27)),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: SearchUser());
            },
            icon: Icon(Icons.search_sharp),
          )
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Tutorial border india

              // Isi box konten bacaan+

              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
                  itemCount: TimelineProvider.listtimeline.length,
                  //itemCount: agendalist.length,
                  itemBuilder: (BuildContext context, int index) {
                    Agenda agenda = agendalist[index];
                    return Stack(
                      children: <Widget>[
                        InkWell(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(10.0, 5.0, 20.0, 5.0),
                            height: 150.0,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  width: 2.0, color: Color(0xFF78909c)),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Padding(
                              padding:
                                  ////////////lebar text
                                  EdgeInsets.fromLTRB(130.0, 60.0, 20.0, 20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        width: 600.0,
                                        child: Text(
                                          TimelineProvider
                                              .listtimeline[index].nama_artikel,
                                          //agendalist[index].nama_artikel,
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                        ),
                                      ),
                                      Container(
                                        width: 120.0,
                                        child: Text(
                                          TimelineProvider
                                              .listtimeline[index].deskripsi,
                                          //gendalist[index].deskripsi,
                                          style: TextStyle(
                                            fontSize: 12.0,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Agenda_detail(
                                          agenda: TimelineProvider
                                              .listtimeline[index],
                                        )));

                            ///curiga
                          },
                        ),
                        Positioned(
                          left: 20.0,
                          top: 15.0,
                          bottom: 15.0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image(
                              width: 110.0,
                              image: NetworkImage(TimelineProvider
                                  .listtimeline[index].imageURL),
                              //image: AssetImage(agendalist[index].imageURL),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 140.0,
                          top: 25.0,
                          right: 40.0,
                          bottom: 100.0,
                          child: Container(
                            height: 10,
                            width: 20,
                            child: TextButton(
                              child: Text(
                                agendalist[index].kategori,
                                style: TextStyle(fontSize: 14),
                              ),
                              style: ButtonStyle(
                                  padding:
                                      MaterialStateProperty.all<EdgeInsets>(
                                          const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 5)),
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color(0xff1b5e20)),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: Color(0xff1b5e20), width: 2),
                                    borderRadius: BorderRadius.circular(10.0),
                                    /////////////////////////////////////////////////////border
                                  ))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Agenda_detail(
                                              agenda: TimelineProvider
                                                  .listtimeline[index],
                                            )));
                              },
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          )),
    );
  }
}
