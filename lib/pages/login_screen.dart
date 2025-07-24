import 'package:auth_task2/constants/app_colors.dart';
import 'package:auth_task2/pages/otp_screen.dart';
import 'package:auth_task2/widgets/blue_container.dart';
import 'package:auth_task2/widgets/custom_button.dart';
import 'package:auth_task2/widgets/custom_text_form_field.dart';
import 'package:auth_task2/pages/signup_screen.dart';
import 'package:auth_task2/widgets/custom_text_row.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        elevation: 0,
        title: const Text(
          "Login",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
            letterSpacing: 1.1,
          ),
        ),
        centerTitle: true,
      ),
      body: BlueContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 18),
            const Text(
              "Welcome Back!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.1,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Please login to your account",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 24),
            const CustomTextFormField(
                hintText: "Email", prefixIcon: Icons.email),
            const CustomTextFormField(
                hintText: "Password", prefixIcon: Icons.lock),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OtpScreen(),
                    ),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.only(top: 6, right: 4),
                  child: Text(
                    "Forgot Your Password?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18),
            CustomButton(
              text: "Login",
              color: AppColors.white,
              onPressed: () {},
            ),
            const SizedBox(height: 14),
            TextRow(
              unClickableText: "Don't Have Account?  ",
              clickableText: "Sign Up",
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignupScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 18),
          ],
        ),
      ),
    );
  }
}
