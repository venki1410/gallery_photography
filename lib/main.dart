import 'package:flutter/material.dart';
import 'package:karthikha_photography/desktop/desktop.dart';
import 'package:karthikha_photography/tablet/tablet.dart';
import 'package:karthikha_photography/mobile/mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Karthikha Photography',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: DeviceCheck(title: 'Flutter Demo Home Page'),
    );
  }
}

class DeviceCheck extends StatefulWidget {
  DeviceCheck({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DeviceCheckState createState() => _DeviceCheckState();
}

class _DeviceCheckState extends State<DeviceCheck> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        // Check the sizing information here and return your UI
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return DesktopView();
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return TabletView();
        }

        return MobileView();
      },
    );
  }
}
