import 'package:flutter/material.dart';

import '../pages.dart';

ElevatedButton authLoginButton({
  required String label,
  required IconData iconName,
  required VoidCallback onPressed,
}) {
  return ElevatedButton.icon(
    onPressed: onPressed,
    icon: Icon(iconName, color: Colors.black, size: 30),
    label: Text(label),
    style: ElevatedButton.styleFrom(
      primary: Colors.white,
      onPrimary: Colors.black,
      side: const BorderSide(
        width: 2.5,
        color: Colors.black,
        style: BorderStyle.solid,
      ),
      shadowColor: Colors.pink[50],
      elevation: 15,
      alignment: Alignment.centerLeft,
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      textStyle: bodyText1(color: Colors.black),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      maximumSize: const Size(double.infinity, 70),
      minimumSize: const Size(300, 50),
    ),
  );
}
