import 'package:flutter/material.dart';

class IconWithNumber extends StatelessWidget {
  final int count;
  final IconData icon;
  final Color iconColor;
  const IconWithNumber(
      {Key? key,
      required this.icon,
      required this.count,
      required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Icon(icon, color: iconColor),
        Visibility(
          visible: count != 0,
          child: Positioned(
            top: 0,
            right: 0,
            child: Container(
              width: 13,
              height: 13,
              decoration: BoxDecoration(
                color: const Color(0xFFFF3B30),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  count.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}