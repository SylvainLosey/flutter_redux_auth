import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

import '../actions/actions.dart';
import '../models/nav_state.dart';
import '../screens/dummy_screen_1.dart';
import '../screens/dummy_screen_2.dart';
import '../screens/profile_screen.dart';


Reducer<NavState> navReducer = combineReducers([
  TypedReducer<NavState, ChangeBottomNavAction>(_changeBottomNav),
]);

NavState _changeBottomNav(NavState state, ChangeBottomNavAction action) {
  Widget rootScreen = state.rootScreen;

  if (action.index == 0) {
    rootScreen = DummyScreen1();
  } else if (action.index == 1) {
    rootScreen = DummyScreen2();
  } else if (action.index == 2) {
    rootScreen = ProfileScreen();
  }

  return state.copyWith(
    selectedBottomNav: action.index,
    rootScreen: rootScreen,
  );
}