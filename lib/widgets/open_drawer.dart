import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget openDrawer() {
  return Drawer(
    child: Column(
      children: [
        Expanded(
          child: ListView(
            children: const [
              ListTile(
                title: Text('Name'),
              ),
              ListTile(
                title: Text('Email'),
              ),
            ],
          ),
        ),
        const Divider(thickness: 2),
        Align(
            alignment: Alignment.bottomCenter,
            child: ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Exit'),
              onTap: () => SystemNavigator.pop(),
            )),
      ],
    ),
  );
}
