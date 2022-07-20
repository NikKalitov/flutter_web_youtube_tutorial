// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_web_youtube_tutorial/widgets/custom_text.dart';
import '../constants/style.dart';
import 'package:get/get.dart';
import '../constants/controllers.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  void Function()? onTap;
  HorizontalMenuItem({
    Key? key,
    required this.itemName,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover('not hovering');
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
                maintainState: true,
                maintainAnimation: true,
                child: Container(
                  width: 6,
                  height: 40,
                  color: CustomColors.dark,
                ),
              ),
              SizedBox(
                width: width / 80,
              ),
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
        );
      }),
    );
  }
}
