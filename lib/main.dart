import 'package:flutter/material.dart';
import 'package:responsive_design_app/responsive/responsiveLayout.dart';
import 'package:responsive_design_app/responsive/mobile.dart';
import 'package:responsive_design_app/responsive/tablet.dart';
import 'package:responsive_design_app/responsive/desktop.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:ResponsiveLayout (
            mobileScaffold:  MobileScaffold(),
            tabletScaffold: TabletScaffold(),
            desktopScaffold: DesktopScaffold()));
  }
}
