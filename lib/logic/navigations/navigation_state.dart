import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'constants/nav_bar_items.dart';
import 'navigation_cubit.dart';



class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState(NavbarItem.home, 0));

  void getNavBarItem(NavbarItem navbarItem) {
    switch (navbarItem) {
      case NavbarItem.home:
        emit(NavigationState(NavbarItem.home, 0));
        break;
      case NavbarItem.saved:
        emit(NavigationState(NavbarItem.saved, 1));
        break;
      case NavbarItem.saved1:
        emit(NavigationState(NavbarItem.saved1, 2));
        break;
      case NavbarItem.profile:
        emit(NavigationState(NavbarItem.profile, 3));
        break;
    }
  }
}