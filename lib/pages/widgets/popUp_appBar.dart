import 'package:flutter/material.dart';

class PopUpAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  const PopUpAppBar({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
