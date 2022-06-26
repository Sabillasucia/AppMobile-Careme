import 'package:caremetimeline/timeline/screen/timeline_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:caremetimeline/timeline/model/model_timeline_database.dart';
import 'package:caremetimeline/timeline/model/timeline_handler.dart';
import 'package:provider/provider.dart';

import '../model/timelineapi.dart';

class SearchUser extends SearchDelegate {
  TimelineApi _AgendaModel = TimelineApi();

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    final TimelineProvider = Provider.of<ViewModelTimeline>(context);
    return FutureBuilder<void>(
        future: TimelineProvider.getSearch(query),
        builder: (context, snapshot) {
          // if (!snapshot.hasData) {
          //   return Center(
          //     child: CircularProgressIndicator(),
          //   );
          // }
          // List<dynamic>? data = snapshot.data;
          return ListView.builder(
              itemCount: TimelineProvider.result.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Agenda_detail(
                                  agenda: TimelineProvider.result[index],
                                )));

                    ///curiga
                  },
                  child: ListTile(
                    title: Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Image(
                              width: 110.0,
                              image: NetworkImage(
                                  TimelineProvider.result[index].imageURL),
                              //image: AssetImage(agendalist[index].imageURL),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Flexible(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${TimelineProvider.result[index].nama_artikel}',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '${TimelineProvider.result[index].kategori}',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ]),
                        )
                      ],
                    ),
                  ),
                );
              });
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(
      child: Text('Search User'),
    );
  }
}
