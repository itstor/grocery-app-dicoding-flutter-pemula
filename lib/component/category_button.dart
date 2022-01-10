import 'package:flutter/material.dart';
import 'package:submission_pemula/constant.dart';

class CategoryButton extends StatelessWidget {
  final String label;
  final Widget icon;
  final Color iconColor;
  const CategoryButton(
      {Key? key,
      required this.icon,
      required this.label,
      required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      width: 80,
      child: Column(
        children: [
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              color: iconColor,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Center(child: SizedBox(width: 24, height: 24, child: icon)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: Spacing.single),
            child: Text(
              label,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}
