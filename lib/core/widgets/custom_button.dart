import 'package:flutter/material.dart';
import '../theme.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final bool isPrimary;

  const CustomButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.isPrimary = true,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor:
            isPrimary ? AppTheme.onPrimaryColor : AppTheme.onSecondaryColor,
        backgroundColor:
            isPrimary ? AppTheme.primaryColor : AppTheme.secondaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: AppTheme.button,
      ),
      onPressed: onPressed,
      child: Text(label),
    );
  }
}
