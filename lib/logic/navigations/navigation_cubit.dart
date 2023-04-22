import 'package:collegeinfo/logic/navigations/constants/nav_bar_items.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

// part of 'navigation_cubit.dart';
class NavigationState extends Equatable {
  final NavbarItem navbarItem;
  final int index;
  NavigationState(this.navbarItem, this.index);
  @override
  // TODO: implement props
  List<Object?> get props => [this.navbarItem,this.index];
}
