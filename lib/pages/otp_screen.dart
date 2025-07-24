import 'package:auth_task2/constants/app_colors.dart';
import 'package:auth_task2/widgets/blue_container.dart';
import 'package:auth_task2/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        elevation: 0,
        title: const Text(
          "OTP Verification",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
            letterSpacing: 1.1,
          ),
        ),
        centerTitle: true,
      ),
      resizeToAvoidBottomInset: false,
      body: BlueContainer(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 18),
              const Text(
                "أدخل رمز التحقق OTP",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1.1,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "لقد أرسلنا الكود الخاص بك",
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              const Text(
                "إلى 000*****010",
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              const Text(
                "سينتهي هذا الكود في 00:30",
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              const SizedBox(height: 18),
              OtpTextField(
                  numberOfFields: 6, showFieldAsBox: true, filled: true),
              const SizedBox(height: 24),
              CustomButton(
                color: AppColors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
                text: "تأكيد",
              ),
              const SizedBox(height: 18),
            ],
          ),
        ),
      ),
    );
  }
}
