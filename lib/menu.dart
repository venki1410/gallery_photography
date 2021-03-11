import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.close,
              //color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _buildContent("WEDDING"),
            _buildContent("MODEL SHOOT"),
            _buildContent("BABY"),
            _buildContent("BIRTHDAY PARTY"),
            _buildContent("PRODUCT"),
            _buildContent("PRODUCT"),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(item) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: ListTile(
        title: Center(
          child: Text(
            item,
            style: GoogleFonts.gudea(
              fontSize: 25,
              color: Colors.grey[600],
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
