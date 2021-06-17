import 'package:flutter/material.dart';

class MenuHome {
  final String? title;
  final String? subTitle;
  final VoidCallback? action;
  final Icon? icon;

  MenuHome({
    this.title,
    this.subTitle,
    this.action,
    this.icon,
  });
}
