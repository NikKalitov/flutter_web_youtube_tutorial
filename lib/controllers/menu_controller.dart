import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routing/routes.dart';
import '../constants/style.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = OverViewPageDisplayName.obs;
  var hoverItem = ''.obs;

  void changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  void onHover(String itemName) {
    if (!isActive(itemName)) {
      hoverItem.value = itemName;
    }
  }

  bool isActive(String itemName) {
    return activeItem.value == itemName;
  }

  bool isHovering(String itemName) {
    return hoverItem.value == itemName;
  }

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case OverViewPageDisplayName:
        return _customIcon(Icons.trending_up, itemName);
      case DriversPageDisplayName:
        return _customIcon(Icons.drive_eta, itemName);
      case ClientsPageDisplayName:
        return _customIcon(Icons.people_alt_outlined, itemName);
      case AuthenticationDisplayName:
        return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (!isActive(itemName)) {
      return Icon(
        icon,
        size: 22,
        color: CustomColors.lightGrey,
      );
    }
    return Icon(
      icon,
      color: isHovering(itemName) ? CustomColors.dark : CustomColors.dark,
    );
  }
}
