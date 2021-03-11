import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyFlexiableAppBar extends StatelessWidget {
  final double appBarHeight = 66.0;

  const MyFlexiableAppBar();

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return new Container(
      padding: new EdgeInsets.only(top: 35),
      height: statusBarHeight + appBarHeight,
      child: new Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                    child: CircleAvatar(
                  child: Icon(
                    FontAwesomeIcons.cameraRetro,
                    color: Colors.black87,
                    size: 40,
                  ),
                  radius: 50,
                  //  backgroundImage: AssetImage('images/batman.jpg'),
                )),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: InkWell(
                      onTap: () async {
                        const url =
                            "https://www.instagram.com/karthikha_photography/?hl=en";
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.black54,
                        size: 40,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: InkWell(
                      onTap: () async {
                        const url =
                            "https://www.youtube.com/channel/UCDkNhB_E8f8KX0SfqPLJTDg";
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Icon(
                        FontAwesomeIcons.youtube,
                        color: Colors.black54,
                        size: 40,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Icon(
                      FontAwesomeIcons.facebook,
                      color: Colors.black54,
                      size: 40,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
      decoration: new BoxDecoration(
        color: Colors.grey[350],
      ),
    );
  }
}
