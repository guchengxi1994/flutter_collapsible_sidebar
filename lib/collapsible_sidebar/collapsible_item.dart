import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CollapsibleItem {
  CollapsibleItem(
      {required this.text,
      this.icon,
      this.iconImage,
      required this.onPressed,
      this.onHold,
      this.isSelected = false,
      this.subItems,
      required this.route});

  final String text;
  final String route;
  IconData? icon;
  ImageProvider? iconImage;
  final Function onPressed;
  final Function? onHold;
  bool isSelected;
  List<CollapsibleItem>? subItems;
}
