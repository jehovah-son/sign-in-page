import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  final Function()? onTap;
  const GoogleButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.grey[400], borderRadius: BorderRadius.circular(8)),
        child: Image.asset(
          'images/google.png',
          height: 70,
        ),
      ),
    );
  }
}
