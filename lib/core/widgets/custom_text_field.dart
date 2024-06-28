import 'package:flutter/material.dart';
import '../theme.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final bool isPassword;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.label,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: AppTheme.subtitle1,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        filled: true,
        fillColor: AppTheme.backgroundColor,
      ),
      style: AppTheme.bodyText1,
    );
  }
}
