import 'package:careme_rpl/screen/timeline_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:careme_rpl/model/model_timeline_database.dart';
import 'package:provider/provider.dart';
import '../Screen/viewModel/model_search.dart';
import 'package:careme_rpl/model/api/timelineapi.dart';

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
    final SearchProvider = Provider.of<ViewModelSearch>(context);
    return FutureBuilder<void>(
        future: SearchProvider.getSearch(query),
        builder: (context, snapshot) {
          // if (!snapshot.hasData) {
          //   return Center(
          //     child: CircularProgressIndicator(),
          //   );
          // }
          // List<dynamic>? data = snapshot.data;
          return ListView.builder(
              itemCount: SearchProvider.result.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Agenda_detail(
                                  agenda: SearchProvider.result[index],
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
                                  SearchProvider.result[index].imageURL),
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
                                  '${SearchProvider.result[index].nama_artikel}',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '${SearchProvider.result[index].kategori}',
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
