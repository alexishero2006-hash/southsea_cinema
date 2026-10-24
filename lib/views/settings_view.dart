import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';
class SettingsView extends StatelessWidget {
  const SettingsView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
       appBar: AppBar(
        title: const Text(appTitle),
         
      ),
      body: Center(
        child: Text('settings'),
      ),
    );
  }
}