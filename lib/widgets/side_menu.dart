// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/controllers.dart';
import '../routing/routes.dart';
import '../widgets/side_menu_item.dart';
import '../constants/style.dart';
import '../helpers/responsiveness.dart';
import './custom_text.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: CustomColors.light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(width: width / 48),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Image.network(
                        'https://raw.githubusercontent.com/Santos-Enoque/flutter-web-dashboard-template/main/assets/icons/logo.png',
                      ),
                    ),
                    Flexible(
                      child: CustomText(
                        text: "Dash",
                        size: 20,
                        weight: FontWeight.bold,
                        color: CustomColors.active,
                      ),
                    ),
                    SizedBox(
                      width: width / 48,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          Divider(
            color: CustomColors.lightGrey.withOpacity(.1),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems
                .map(
                  (item) => SideMenuItem(
                    itemName: item.name,
                    onTap: () {
                      if (item.route == AuthenticationPageRoute) {
                        menuController
                            .changeActiveItemTo(OverViewPageDisplayName);
                        Get.offAllNamed(AuthenticationPageRoute);
                        // Get.offAll(() => AuthenticationPage());
                      }
                      if (!menuController.isActive(item.name)) {
                        menuController.changeActiveItemTo(item.name);
                        if (ResponsiveWidget.isSmallScreen(context)) {
                          Get.back();
                        }
                        navigationController.navigateTo(item.route);
                      }
                    },
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
