import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

import 'app.dart';
import 'models/app_state.dart';
import 'store/store.dart';

void main() {
  final Store<AppState> store = createStore();
  runApp(App(store));
}