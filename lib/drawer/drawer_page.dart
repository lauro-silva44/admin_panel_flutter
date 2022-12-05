import 'package:admin_panel/constants.dart';
import 'package:admin_panel/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Constants.kPadding),
          child: Column(children: [
            ListTile(
              title: const Text(
                'Admin Menu',
                style: TextStyle(color: Colors.white),
              ),
              trailing: ResponsiveLayout.isComputer(context)
                  ? null
                  : IconButton(
                      onPressed: (() {}),
                      icon: const Icon(
                        Icons.close,
                        color: Colors.white,
                      )),
            )
          ]),
        ),
      ),
    );
  }
}
