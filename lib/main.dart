import 'package:flutter/material.dart';
import 'package:portfolio_app/responsive/responsive_layout.dart';
import 'package:portfolio_app/responsive/mobile/mobile.dart';
import 'package:portfolio_app/responsive/tablet/tablet.dart';
import 'package:portfolio_app/responsive/desktop/desktop.dart';
// import 'package:portfolio_app/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      home: ResponsiveBuilder(
        mobile: MobileHomePage(),
        tablet: TabletHomePage(),
        desktop: DesktopHomePage(),
      ),
      // home: HomePage(),
    );
  }
}
