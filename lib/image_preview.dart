import 'package:flutter/material.dart';

class ImagePreview extends StatelessWidget {
  final String path;

  const ImagePreview({Key key, @required this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            elevation: 0.0,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.close, color: Colors.black),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
          body: Center(child: InteractiveViewer(child: Image.asset(path)))
          //body:InteractiveViewer(child:path)
          ),
    );
  }
}
