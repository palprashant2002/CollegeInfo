import 'package:collegeinfo/presentations/screens/College_list.dart';
import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xFF084A76),
                  ),
                  height: 180,
                  child: Column(
                    children: [
                      Container(
                        height: 95,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Find your own way',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Search in 600 colleges around',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                              Spacer(),
                              IconButton(
                                icon: const Icon(
                                  Icons.notifications,
                                  color: Colors.white,
                                  size: 35,
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: <Widget>[
                          Container(
                            width: 300,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: const Center(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search for something',
                                  prefixIcon: Icon(Icons.search),
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.mic,
                                  color: Colors.black,
                                )),
                          )
                        ]),
                      ),
                    ],
                  ),
                ),
                Column(
                    children: [CardView(), CardView(), CardView(), CardView()]),
              ])),
    );
  }
}

class CardView extends StatefulWidget {
  const CardView({super.key});

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          bottom(context);
        },
        child: Card(
          elevation: 20,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          margin: EdgeInsets.all(20),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage("assets/images/clg2.jpg"),
                    fit: BoxFit.cover)),
            height: 200,
            width: double.infinity,
            child: Column(
              children: [
                Container(alignment: Alignment.centerLeft,child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Top Colleges",style:TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                )),
                Text(
                  "Search through thousands of accredited colleges and universities online to find the right one for you. Apply in 3 min, and connect with your future.",
                  style: TextStyle(color: Colors.white,fontSize: 18,),
                )
              ],
            ),
          ),
        ));
  }
}


bottom(context) {
  {
    showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          var _character;
          return Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            height: MediaQuery.of(context).size.height,
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.abc, color: Colors.white),
                  title: Text(
                    "Sort by",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  trailing: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.close_rounded),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.holiday_village_outlined),
                  trailing: new Icon(Icons.radio_button_off),
                  title: new Text('Bachelor of Technology'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TechCollege(),
                        ));
                  },
                ),
                ListTile(
                  leading: new Icon(Icons.home_max_rounded),
                  trailing: Icon(Icons.radio_button_off),
                  title: new Text('Bachelor of Architecture'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TechCollege(),
                        ));
                  },
                ),
                ListTile(
                  leading: new Icon(Icons.medication_outlined),
                  trailing: Icon(Icons.radio_button_off),
                  title: new Text('Pharmacy'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TechCollege(),
                        ));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.looks_two_sharp),
                  trailing: new Icon(Icons.radio_button_off),
                  title: new Text('Law'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TechCollege(),
                        ));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.medical_services),
                  trailing: new Icon(Icons.radio_button_off),
                  title: new Text('Management'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TechCollege(),
                        ));
                  },
                ),
              ],
            ),
          );
        });
  }
}
