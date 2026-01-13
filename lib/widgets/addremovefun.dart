import 'package:flutter/material.dart';

class Addremovefun extends StatelessWidget {
  final Color color;
  final VoidCallback ontap;
  final Icon icon;
  final Color iconcolor;
  const Addremovefun({
    super.key,
    required this.color,
    required this.ontap,
    required this.icon,
    required this.iconcolor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Icon(icon.icon, color: iconcolor),
      ),
    );
  }
}
