import 'package:flutter/material.dart';
import '../routing/router.dart';
import '../routing/routes.dart';
import '../constants/controllers.dart';

Navigator localNavigator() {
  return Navigator(
    key: navigationController.navigationKey,
    initialRoute: OverViewPageRoute,
    onGenerateRoute: (RouteSettings settings) {
      return generateRoute(settings);
    },
  );
}
