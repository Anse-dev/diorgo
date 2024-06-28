import 'package:flutter/material.dart';
import '../theme.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final double elevation;

  const CustomCard({
    super.key,
    required this.child,
    this.padding,
    this.color,
    this.elevation = 2.0,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color ?? AppTheme.surfaceColor,
      elevation: elevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: padding ?? const EdgeInsets.all(16.0),
        child: child,
      ),
    );
  }
}
