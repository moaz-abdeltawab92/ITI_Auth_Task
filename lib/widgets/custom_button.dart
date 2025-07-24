import 'package:flutter/material.dart';
import 'package:auth_task2/constants/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color,
  });
  final String text;
  final Color? color;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final Color buttonColor = color ?? AppColors.primary;
    final Color textColor =
        buttonColor == AppColors.white ? AppColors.primary : Colors.white;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 48,
        width: screenWidth * 0.7,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: AppColors.shadow,
              blurRadius: 8,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: textColor,
              letterSpacing: 1.1,
            ),
          ),
        ),
      ),
    );
  }
}
