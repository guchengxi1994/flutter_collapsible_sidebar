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
      required this.router,
      this.visible = true});

  final String text;
  final String router;
  IconData? icon;
  ImageProvider? iconImage;
  final Function onPressed;
  final Function? onHold;
  bool isSelected;
  List<CollapsibleItem>? subItems;
  bool visible;

  bool operator ==(Object other) {
    if (other is! CollapsibleItem) {
      return false;
    }
    return other.text == text && other.router == router;
  }

  @override
  int get hashCode => text.hashCode + router.hashCode;
}
