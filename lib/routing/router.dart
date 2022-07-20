// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../pages/clients/clients.dart';
import '../pages/drivers/drivers.dart';
import '../pages/overview/overview.dart';
import './routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OverViewPageRoute:
      return getPageRoute(OverViewPage());
    case DriversPageRoute:
      return getPageRoute(DriversPage());
    case ClientsPageRoute:
      return getPageRoute(ClientsPage());
    // case AuthenticationPageRoute:
    //   return getPageRoute(AuthenticationPage());
    default:
      return getPageRoute(OverViewPage());
  }
}

PageRoute getPageRoute(Widget child) {
  return MaterialPageRoute(
    builder: (context) {
      return child;
    },
  );
}
