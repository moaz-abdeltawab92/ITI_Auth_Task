import 'package:flutter/material.dart';
import 'package:auth_task2/constants/app_colors.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text(
          "Settings",
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
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 18),
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 18),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: AppColors.shadow,
                  blurRadius: 8,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: const ListTile(
              leading: Icon(Icons.language, color: AppColors.primary),
              title: Text("Language",
                  style: TextStyle(fontWeight: FontWeight.w600)),
              trailing: Icon(Icons.arrow_forward_ios,
                  color: AppColors.textLight, size: 20),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 18),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: AppColors.shadow,
                  blurRadius: 8,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: const ListTile(
              leading: Icon(Icons.dark_mode, color: AppColors.primary),
              title: Text("Dark Mode",
                  style: TextStyle(fontWeight: FontWeight.w600)),
              trailing: Switch(value: false, onChanged: null), // static switch
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 18),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: AppColors.shadow,
                  blurRadius: 8,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: const ListTile(
              leading: Icon(Icons.lock, color: AppColors.primary),
              title: Text("Privacy",
                  style: TextStyle(fontWeight: FontWeight.w600)),
              trailing: Icon(Icons.arrow_forward_ios,
                  color: AppColors.textLight, size: 20),
            ),
          ),
        ],
      ),
    );
  }
}
