import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Navigation {
  static var drawer = const Drawer(
    child: Center(child: Text('Drawer')),
  );

  static var appBar = AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: Builder(builder: (context) {
      return IconButton(
        icon: const Icon(
          Icons.notes,
          color: Colors.grey,
        ),
        onPressed: () => Scaffold.of(context).openDrawer(),
      );
    }),
    actions: <Widget>[
      const Icon(
        Icons.forum,
        color: Colors.grey,
      ),
      SizedBox(
        width: 2.h,
      ),
      const Icon(
        Icons.notifications,
        color: Colors.grey,
      ),
    ],
  );
}
