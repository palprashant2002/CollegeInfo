import 'package:flutter/material.dart';


class CollegeDetails extends StatefulWidget {
  const CollegeDetails({super.key});

  @override
  State<CollegeDetails> createState() => _CollegeDetailsState();
}

class _CollegeDetailsState extends State<CollegeDetails> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Color(0xFF084A76),
                toolbarHeight: 400,
                pinned: true,
                floating: true,
                automaticallyImplyLeading: false,
                expandedHeight: 450,
                forceElevated: innerBoxIsScrolled,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 40, 0, 10),
                        decoration: BoxDecoration(color: Color(0xFF084A76)),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                )),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.bookmark,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              child: Image(
                                  image: AssetImage("assets/images/clg2.jpg")),
                            )
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "GHJK Engineering college",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(8),
                        height: 100,
                        child: Row(
                          children: [
                            Container(
                                // padding: EdgeInsets.all(8),
                                width: 320,
                                child: Text(
                                    style: TextStyle(fontSize: 15),
                                    softWrap: true,
                                    maxLines: 4,
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis consectetur nulla pharetra praesent hendrerit vulputate viverra. Pellentesque aliquam tempus faucibus est.")),
                            Spacer(),
                            Container(
                              height: 80,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10)),
                              padding: EdgeInsets.fromLTRB(8, 8, 10, 8),
                              child: Column(
                                children: [
                                  Text(
                                    "4.3",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    Icons.star_half_rounded,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                bottom: TabBar(
                  isScrollable: true,
                  tabs: [
                    Tab(child: Text('About college')),
                    Tab(child: Text('Hostel facility')),
                    Tab(child: Text('Q & A')),
                    Tab(child: Text('Events')),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: <Widget>[
              About_College(),
              Hostel_Details(),
              Icon(Icons.directions_car, size: 350),
              Icon(Icons.directions_bike, size: 350),
            ],
          ),
        ),
        bottomSheet: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF084A76),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                onPressed: () {},
                child: Text(
                  "Apply Now",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
          ),
        ),
      ),
    );
  }
}




//____________________About College_____________________

class About_College extends StatefulWidget {
  const About_College({super.key});

  @override
  State<About_College> createState() => _About_CollegeState();
}

class _About_CollegeState extends State<About_College> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Description",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )),
                    SizedBox(height: 10),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.",
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Location",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )),
                    SizedBox(height: 10),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50)),
                        child: Image(
                          image: AssetImage("assets/images/map.jpg"),
                        ))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Student Review",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 90,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(6),
                            child: Column(
                              children: [
                                Container(
                                  child: Image(
                                    image: AssetImage("assets/images/user" +
                                        (index + 1).toString() +
                                        ".jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text("Arun sai",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla sit magna suscipit tellus malesuada in facilisis a."),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 20,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Container(
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}






//______________________Hostel details_________________________


class Hostel_Details extends StatefulWidget {
  const Hostel_Details({super.key});

  @override
  State<Hostel_Details> createState() => _Hostel_DetailsState();
}

class _Hostel_DetailsState extends State<Hostel_Details> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  toolbarHeight: 50,
                  backgroundColor: Colors.white,
                  pinned: true,
                  floating: true,
                  automaticallyImplyLeading: false,
                  forceElevated: true,
                  bottom: TabBar(
                    isScrollable: true,
                    tabs: [
                      Tab(
                          child: Container(
                        alignment: Alignment.center,
                        width: 60,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF084A76)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(11, 0, 0, 0),
                              child: Icon(
                                Icons.bed,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("4"),
                          ],
                        ),
                      )),
                      Tab(
                          child: Container(
                        alignment: Alignment.center,
                        width: 60,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF084A76)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(11, 0, 0, 0),
                              child: Icon(
                                Icons.bed,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("3"),
                          ],
                        ),
                      )),
                      Tab(
                          child: Container(
                        alignment: Alignment.center,
                        width: 60,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF084A76)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(11, 0, 0, 0),
                              child: Icon(
                                Icons.bed,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("2"),
                          ],
                        ),
                      )),
                      Tab(
                          child: Container(
                        alignment: Alignment.center,
                        width: 60,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF084A76)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(11, 0, 0, 0),
                              child: Icon(
                                Icons.bed,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("1"),
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: <Widget>[
                Hostel_View(),
                Hostel_View(),
                Hostel_View(),
                Hostel_View(),
              ],
            ),
          ),
        ));
  }
}




//___________Hostel_View_____________________________
class Hostel_View extends StatefulWidget {
  const Hostel_View({super.key});

  @override
  State<Hostel_View> createState() => _Hostel_ViewState();
}

class _Hostel_ViewState extends State<Hostel_View> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 120,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(6),
                child: Column(
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage("assets/images/hostel" +
                            (index + 1).toString() +
                            ".jpg"),
                        fit: BoxFit.cover,
                      ),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.all(8),
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text(
                          "GHJK Engineering Hostel",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Container(
                          width: 60,
                          height: 35,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.green,),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "4.3",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 15,fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.star_half_rounded,
                                color: Colors.white,
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Row(children: [
                  Icon(Icons.location_on_outlined),
                  Text("Lorem ipsum dolor sit amet, consectetur "),
                ]),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.",
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Facilities",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )),
                    ListTile(leading: Icon(Icons.location_city_outlined),title: Text("College in 400mtrs"),),
                    ListTile(leading: Icon(Icons.bathtub_outlined),title: Text("Bathrooms : 2"),),
                  ],
                ),
              ),
            ),
      ],
    );;
  }
}