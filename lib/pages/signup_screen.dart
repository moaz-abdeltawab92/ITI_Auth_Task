import 'package:auth_task2/constants/app_colors.dart';
import 'package:auth_task2/widgets/blue_container.dart';
import 'package:auth_task2/widgets/custom_button.dart';
import 'package:auth_task2/widgets/custom_text_form_field.dart';
import 'package:auth_task2/pages/login_screen.dart';
import 'package:auth_task2/widgets/custom_text_row.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        elevation: 0,
        title: const Text(
          "Signup",
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 18),
              const Text(
                "Create Account",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.1,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Sign up to get started",
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
              const CustomTextFormField(
                hintText: "Confirm Password",
                prefixIcon: Icons.lock,
              ),
              const SizedBox(height: 18),
              CustomButton(
                color: AppColors.white,
                text: "Signup",
                onPressed: () {},
              ),
              const SizedBox(height: 14),
              TextRow(
                unClickableText: "Already Have an Account?  ",
                clickableText: "Login",
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  );
                },
              ),
              const SizedBox(height: 18),
            ],
          ),
        ),
      ),
    );
  }
}
