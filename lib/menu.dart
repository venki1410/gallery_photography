import 'package:flutter/material.dart';

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
          children: <Widget>[
            _buildContent("Wedding"),
            _buildContent("Model Shoot"),
            _buildContent("Baby"),
            _buildContent("Birthday Party"),
            _buildContent("Product"),
            _buildContent("Maternity Shoot"),
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
            style: TextStyle(
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
