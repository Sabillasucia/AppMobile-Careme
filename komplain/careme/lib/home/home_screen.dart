// ignore_for_file: deprecated_member_use, unnecessary_new
import 'package:careme/viewModel/banner_viewModel.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    bool isInit = true;

  @override
  void didChangeDependencies() {
    if (isInit == true) {
      Provider.of<BannerKesehatan>(context, listen: false).getDataBanner();
      isInit = false;
    }
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    final homeCareMeProvider = Provider.of<BannerKesehatan>(context);
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: ListView.builder(
            itemCount: homeCareMeProvider.dataBanner.length,
            itemBuilder: ((context, index) {
              return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Stack(
              children: [
                SizedBox(
                  width: 500,
                  child: CarouselSlider.builder(
                    itemCount: 2,
                    options: CarouselOptions(
                      height: 180,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      autoPlayInterval: const Duration(seconds: 4),
                    ),
                    itemBuilder: (context, index, realindex) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(
                                    homeCareMeProvider.dataBanner[index].image!,
                                  ),
                                  fit: BoxFit.cover),
                              boxShadow: const [
                                BoxShadow(
                                  offset: Offset(0, 5),
                                  blurRadius: 5,
                                  color: Color.fromARGB(117, 0, 0, 0),
                                )
                              ]),
                        ),
                      );
                    })
                ),
                Container(
                  margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Care Me",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Icon(
                            Icons.notifications,
                            size: 28,
                            color: Colors.white,
                          )
                        ],
                      ),
                      const Text(
                        "Knowing your mental health!",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.only(right: 25),
              child: Stack(
                children: [
                  SizedBox(
                    child: Image.asset(
                        "assets/image/banner1.png",
                        width: double.infinity,
                        fit: BoxFit.fill),
                  ),
                  //letak banner
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            
            Container(
              margin: const EdgeInsets.only(left: 30, bottom: 15),
              child: const Text("Layanan Care Me", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            ),

            SizedBox(
              height: 110,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(width: 10,),
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: RaisedButton(
                      textColor: const Color(0xff000000),
                      color: Colors.white,
                      child: Column(
                        children: [
                          Image.asset(
                              "assets/image/pic.png",
                              width: double.infinity,
                              fit: BoxFit.fill),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("Check Up\nhistory", style: TextStyle(fontSize: 10)),

                        ],
                      ),
                      onPressed: () {
                      },
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: RaisedButton(
                      textColor: const Color(0xff000000),
                      color: Colors.white,
                      child: Column(
                        children: [
                          Image.asset(
                              "assets/image/pic.png",
                              width: double.infinity,
                              fit: BoxFit.fill),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Konsultasi",
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                      onPressed: () {
                        // Route route = MaterialPageRoute(builder: (context) => Psikolog());
                        // Navigator.push(context, route);
                      },
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: RaisedButton(
                      textColor: const Color(0xff000000),
                      color: Colors.white,
                      child: Column(
                        children: [
                          Image.asset(
                              "assets/image/pic.png",
                              width: double.infinity,
                              fit: BoxFit.fill),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("Mental Health\nTest",textAlign: TextAlign.center, style: TextStyle(fontSize: 10)),
                          
                        ],
                      ),
                      onPressed: () {},
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: RaisedButton(
                      textColor: const Color(0xff000000),
                      color: Colors.white,
                      child: Column(
                        children: [
                          Image.asset(
                              "assets/image/pic.png",
                              width: double.infinity,
                              fit: BoxFit.fill),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("Customer", style: TextStyle(fontSize: 10)),
                          const Text(
                            "Complaint",
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                      onPressed: () {
                        // Route route = MaterialPageRoute(builder: (context) => complain());
                        // Navigator.push(context, route);
                      },
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            

            const SizedBox(
              height: 20,
            ),

          ]
          );
            })
          )
        ),
      ),
    );
  }
}
