// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../widgets/vertical_menu_item.dart';
import '../helpers/responsiveness.dart';
import './horizontal_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  void Function()? onTap;

  SideMenuItem({
    Key? key,
    required this.itemName,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomScreen(context)) {
      return VerticalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );
    } else {
      return HorizontalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );
    }
  }
}
