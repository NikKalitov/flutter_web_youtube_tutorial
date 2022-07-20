// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../constants/style.dart';
import '../helpers/responsiveness.dart';
import './custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) {
  return AppBar(
    leading: !ResponsiveWidget.isSmallScreen(context)
        ? Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 14),
                child: Image.network(
                  'https://raw.githubusercontent.com/Santos-Enoque/flutter-web-dashboard-template/main/assets/icons/logo.png',
                  width: 28,
                ),
              ),
            ],
          )
        : IconButton(
            onPressed: () {
              key.currentState?.openDrawer();
            },
            icon: Icon(
              Icons.menu,
              color: CustomColors.dark,
            ),
          ),
    elevation: 0,
    backgroundColor: Colors.transparent,
    title: Row(
      children: [
        Visibility(
          child: CustomText(
            text: 'Dash',
            color: CustomColors.lightGrey,
            size: 20,
            weight: FontWeight.bold,
          ),
        ),
        Expanded(
          child: Container(),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.settings,
            color: CustomColors.dark.withOpacity(.7),
          ),
        ),
        Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: CustomColors.dark.withOpacity(.7),
              ),
            ),
            Positioned(
              top: 7,
              right: 7,
              child: Container(
                width: 12,
                height: 12,
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: CustomColors.active,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: CustomColors.light,
                    width: 2,
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          width: 1,
          height: 22,
          color: CustomColors.lightGrey,
        ),
        SizedBox(
          width: 24,
        ),
        CustomText(
          text: 'John Black',
          color: CustomColors.lightGrey,
          weight: FontWeight.bold,
        ),
        SizedBox(
          width: 16,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Container(
            padding: EdgeInsets.all(2),
            margin: EdgeInsets.all(2),
            child: CircleAvatar(
              backgroundColor: CustomColors.light,
              child: Icon(
                Icons.person_outline,
                color: CustomColors.dark,
              ),
            ),
          ),
        ),
      ],
    ),
    iconTheme: IconThemeData(
      color: CustomColors.dark,
    ),
  );
}
