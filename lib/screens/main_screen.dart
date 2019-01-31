import 'package:flutter/material.dart';

import '../containers/bottom_nav.dart';
import '../containers/root_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _createAppBar(),
      body: RootScreen(),
      bottomNavigationBar: BottomNav(),
    );
  }

  AppBar _createAppBar() {
    return AppBar(
      title: Text('Redux App'),
    );
  }
}