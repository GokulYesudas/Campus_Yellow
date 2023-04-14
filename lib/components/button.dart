import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onTap;
  final Color buttonColor;

  CustomButton({required this.buttonText, required this.buttonColor, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Decrease padding
        margin: const EdgeInsets.symmetric(horizontal: 10), // Decrease margin
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18, // Decrease font size
            ),
          ),
        ),
      ),
    );
  }
}
