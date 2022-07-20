// ignore_for_file: sort_child_properties_last, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import './widgets/large_screen.dart';
import './widgets/small_screen.dart';
import './helpers/responsiveness.dart';
import './widgets/top_nav_bar.dart';
import './widgets/side_menu.dart';

class SiteLayout extends StatelessWidget {
  SiteLayout({Key? key}) : super(key: key);

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(
        context,
        scaffoldKey,
      ),
      drawer: Drawer(
        child: SideMenu(),
      ),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
