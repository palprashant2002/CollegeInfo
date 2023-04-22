import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/navigations/constants/nav_bar_items.dart';
import '../../logic/navigations/navigation_cubit.dart';
import '../../logic/navigations/navigation_state.dart';
import 'package:collegeinfo/presentations/screens/CollegeDetails.dart';

class TechCollege extends StatefulWidget {
  const TechCollege({super.key});

  @override
  State<TechCollege> createState() => _TechCollegeState();
}

class _TechCollegeState extends State<TechCollege> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Column(children: <Widget>[
              Container(
                height: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF084A76)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 100,
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
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [CollegeCdView(), CollegeCdView(), CollegeCdView()],
                ),
              )
            ]),
          ),
        ),
        bottomNavigationBar: BlocBuilder<NavigationCubit, NavigationState>(
            builder: (context, state) {
          return BottomNavigationBar(
            selectedItemColor: Color(0xFF084A76),

            unselectedLabelStyle: TextStyle(color: Colors.white),
            backgroundColor: const Color(0xFF084A76),
            // fixedColor: Colors.white,
            // unselectedItemColor: Colors.white,
            currentIndex: state.index,
            showUnselectedLabels: true,
            unselectedIconTheme: CupertinoIconThemeData(size: 25),
            selectedIconTheme: CupertinoIconThemeData(size: 30),
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.bookmark_added_sharp,
                ),
                label: 'Saved',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.energy_savings_leaf_rounded,
                ),
                label: 'Saved1',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle,
                ),
                label: 'Account',
              ),
            ],
            onTap: (index) {
              if (index == 0) {
                BlocProvider.of<NavigationCubit>(context)
                    .getNavBarItem(NavbarItem.home);
              } else if (index == 1) {
                BlocProvider.of<NavigationCubit>(context)
                    .getNavBarItem(NavbarItem.saved);
              } else if (index == 2) {
                BlocProvider.of<NavigationCubit>(context)
                    .getNavBarItem(NavbarItem.saved1);
              } else if (index == 3) {
                BlocProvider.of<NavigationCubit>(context)
                    .getNavBarItem(NavbarItem.profile);
              }
            },
          );
        }));
  }
}

class CollegeCdView extends StatefulWidget {
  const CollegeCdView({super.key});

  @override
  State<CollegeCdView> createState() => _CollegeCdViewState();
}

class _CollegeCdViewState extends State<CollegeCdView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => CollegeDetails()));
      },
      child: Card(
        child: Stack(children: <Widget>[
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              height: 100,
              width: double.infinity,
              child: Image(
                  image: AssetImage("assets/images/clg1.jpg"),
                  fit: BoxFit.fitWidth),
            ),
            // SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "GHJK Enginnering Collge",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Container(
              width: 250,
              padding: EdgeInsets.all(8),
              child: Text(
                  "Buffer Call fer Queue is dead 7143570 300930 frame number : 1 blast Buffer Queue is dead"),
            ),
            Divider(
              height: 4,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),

            ListTile(
              title: Text("More than 1000+ studennt place"),
              leading: Icon(
                Icons.thumb_up,
                color: Colors.blue,
              ),
              trailing: Icon(Icons.remove_red_eye_rounded),
            )
          ]),
          Positioned(
            top: 5,
            left: 5,
            child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
                child: IconButton(
                    icon: Icon(Icons.share),
                    onPressed: () {},
                    color: Colors.black)),
          ),
          Positioned(
            top: 5,
            right: 5,
            child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
                child: IconButton(
                    icon: Icon(Icons.bookmark),
                    onPressed: () {},
                    color: Colors.black)),
          ),
          Positioned(
              right: 10,
              top: 120,
              child: Container(
                height: 30,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "4.3",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Icon(
                      Icons.star_half_rounded,
                      color: Colors.white,
                    )
                  ],
                ),
              )),
          Positioned(
            right: 10,
            bottom: 60,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {},
                child: Text("Apply Now")),
          )
        ]),
      ),
    );
  }
}
