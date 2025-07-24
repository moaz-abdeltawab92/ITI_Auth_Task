import 'package:flutter/material.dart';
import 'package:auth_task2/constants/app_colors.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text(
          "App Info",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 1.1,
          ),
        ),
        backgroundColor: AppColors.primary,
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 32),
          padding: const EdgeInsets.all(28),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color: AppColors.shadow,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About the App',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'This app is built using Flutter and showcases the use of BottomNavigationBar with multiple screens like Home, Settings, Profile, and Info.',
                style: TextStyle(fontSize: 16, color: AppColors.textDark),
              ),
              SizedBox(height: 28),
              Text('Version: 1.0.0',
                  style: TextStyle(color: AppColors.textLight)),
              Text('Developer: Moaz Ayman',
                  style: TextStyle(color: AppColors.textLight)),
            ],
          ),
        ),
      ),
    );
  }
}
