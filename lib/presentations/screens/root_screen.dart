import 'package:collegeinfo/logic/navigations/constants/nav_bar_items.dart';
import 'package:collegeinfo/logic/navigations/navigation_cubit.dart';
import 'package:collegeinfo/presentations/screens/home_screen.dart';
import 'package:collegeinfo/presentations/screens/profile.dart';
import 'package:collegeinfo/presentations/screens/setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/navigations/navigation_state.dart';

class RootScreen extends StatefulWidget {
  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF084A76),
      bottomNavigationBar: BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
          return BottomNavigationBar(
            unselectedLabelStyle: TextStyle(color: Colors.white),
            backgroundColor: Color(0xFF084A76),
            fixedColor: Colors.white,
            unselectedItemColor: Colors.white,
            currentIndex: state.index,
            showUnselectedLabels: true,
            unselectedIconTheme: CupertinoIconThemeData(size: 25),
            selectedIconTheme: CupertinoIconThemeData(size: 30),
            items: [
              BottomNavigationBarItem(
                backgroundColor: Color(0xFF084A76),
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
        },
      ),
      body: BlocBuilder<NavigationCubit, NavigationState>(
          builder: (context, state) {
        if (state.navbarItem == NavbarItem.home) {
          return HomeScreen();
        } else if (state.navbarItem == NavbarItem.saved) {
          return SettingScreen();
        } else if (state.navbarItem == NavbarItem.saved1) {
          return SettingScreen();
        } else if (state.navbarItem == NavbarItem.profile) {
          return ProfileScreen();
        }
        return Container();
      }),
    );
  }
}
