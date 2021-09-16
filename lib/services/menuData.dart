import 'package:flutter/material.dart';
import 'package:profile/data/menuModel.dart';

class Menuitems {
  static List<Menuitem> items = [showmore, setting];
  static final showmore = Menuitem(
      icon: Icon(
        Icons.phone_android,
        color: Colors.black,
      ),
      title: Text('About This'));
  static final setting = Menuitem(
      icon: Icon(Icons.settings, color: Colors.black), title: Text('Setting'));
}
