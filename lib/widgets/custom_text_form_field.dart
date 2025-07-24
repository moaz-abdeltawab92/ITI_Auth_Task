import 'package:flutter/material.dart';
import 'package:auth_task2/constants/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
  });
  final String hintText;
  final IconData prefixIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.shadow,
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ],
          borderRadius: BorderRadius.circular(18),
        ),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: const TextStyle(color: AppColors.textDark, fontSize: 16),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.border, width: 1.2),
              borderRadius: BorderRadius.circular(18),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: AppColors.primary, width: 1.8),
              borderRadius: BorderRadius.circular(18),
            ),
            hintText: hintText,
            hintStyle:
                const TextStyle(color: AppColors.textLight, fontSize: 15),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
            prefixIconColor: AppColors.primary,
            prefixIcon: Icon(prefixIcon, size: 28),
            filled: true,
            fillColor: AppColors.white,
          ),
        ),
      ),
    );
  }
}
