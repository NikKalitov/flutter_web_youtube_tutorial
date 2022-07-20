// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import './pages/authentication/authentication.dart';
import './controllers/navigation_controller.dart';
import './layout.dart';
import './controllers/menu_controller.dart';
import '../routing/routes.dart';

void main() {
  Get.put(MenuController());
  Get.put(NavigationController());
  runApp(MyApp());
}

///https://youtu.be/i6gFRSnE6Ro?t=3500
///ссылка на видео
///1:37:00
///но где-то ошибка, поскольку не отображается меню при большом экране

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AuthenticationPageRoute,
      getPages: [
        GetPage(
          name: RootRoute,
          page: () => SiteLayout(),
        ),
        GetPage(
          name: AuthenticationPageRoute,
          page: () => AuthenticationPage(),
        ),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Dash',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme,
        ).apply(
          bodyColor: Colors.black,
        ),
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          },
        ),
        primaryColor: Colors.blue,
      ),
      // home: AuthenticationPage(),
    );
  }
  // final GoRouter router = GoRouter(
  //   routes: <GoRoute>[
  //     GoRoute(
  //       path: '/',
  //       builder: (BuildContext context, GoRouterState state) => const Page1Screen(),
  //     ),
  //     GoRoute(
  //       path: '/page2',
  //       builder: (BuildContext context, GoRouterState state) => const Page2Screen(),
  //     ),
  //   ],
  // );
}

// @override
//   Widget build(BuildContext context) => MaterialApp.router(
//         routeInformationProvider: router.routeInformationProvider,
//         routeInformationParser: router.routeInformationParser,
//         routerDelegate: router.routerDelegate,
//         title: 'GoRouter Example',
//       );

  