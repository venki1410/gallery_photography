import 'package:flutter/material.dart';
import 'package:karthikha_photography/gallery.dart';
import '../menu.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
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
            backgroundColor: Colors.grey[50],
            expandedHeight: 50,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Karthikha Photography",
                style: GoogleFonts.sacramento(
                    //textStyle: TextStyle(letterSpacing: .5),
                    ),
              ),
              centerTitle: true,
            ),
          ),
          SliverFillRemaining(
            child: Gallery(),
          )
        ],
      ),
    );
  }
}
