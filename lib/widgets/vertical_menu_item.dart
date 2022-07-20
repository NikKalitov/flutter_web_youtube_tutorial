// ignore_for_file: must_be_immutable, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import '../constants/controllers.dart';
import 'package:get/get.dart';
import '../constants/style.dart';
import 'custom_text.dart';

class VerticalMenuItem extends StatelessWidget {
  final String itemName;
  void Function()? onTap;
  VerticalMenuItem({Key? key, required this.itemName, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover("not hovering");
      },
      child: Obx(() {
        return Container(
          color: menuController.isHovering(itemName)
              ? CustomColors.lightGrey.withOpacity(.1)
              : Colors.transparent,
          child: Row(
            children: [
              Visibility(
                visible: menuController.isHovering(itemName) ||
                    menuController.isActive(itemName),
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                child: Container(
                  width: 3,
                  height: 72,
                  color: CustomColors.dark,
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: menuController.returnIconFor(itemName),
                      ),
                      if (!menuController.isActive(itemName))
                        Flexible(
                          child: CustomText(
                            text: itemName,
                            color: menuController.isHovering(itemName)
                                ? CustomColors.lightGrey
                                : CustomColors.lightGrey,
                          ),
                        )
                      else
                        Flexible(
                          child: CustomText(
                            text: itemName,
                            color: CustomColors.dark,
                            size: 18,
                            weight: FontWeight.bold,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
