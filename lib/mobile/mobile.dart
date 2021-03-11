import 'package:flutter/material.dart';
import 'package:karthikha_photography/gallery.dart';
import 'package:karthikha_photography/myappbar.dart';
import '../menu.dart';
import 'package:google_fonts/google_fonts.dart';

import '../myflexibleappbar.dart';

class MobileView extends StatefulWidget {
  @override
  _MobileViewState createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  final String folderName = 'images';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        physics: NeverScrollableScrollPhysics(),
        headerSliverBuilder: (context, isScolled) {
          return [
            SliverAppBar(
              title: MyAppBar(),
              actions: <Widget>[
                //IconButton
                IconButton(
                    icon: Icon(Icons.menu),
                    tooltip: 'Menu',
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Menu()));
                    }), //IconButton
              ],
              floating: true,
              backgroundColor: Colors.grey[100],
              expandedHeight: 280.0,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: MyFlexiableAppBar(),
                centerTitle: true,
              ),
            ),
          ];
        },
        body: Gallery(
          location: folderName,
        ),
      ),
    );
  }
}
