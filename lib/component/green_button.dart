import 'package:flutter/material.dart';

class GreenButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  
  const GreenButton({ Key? key, required this.child, required this.onPressed }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF54B175)),
        shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}