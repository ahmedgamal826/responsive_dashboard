import 'package:flutter/material.dart';

class CustomBackgroundContainer extends StatelessWidget {
  CustomBackgroundContainer({
    required this.child,
    this.padding,
    super.key,
  });

  final Widget child;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding ?? 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12), // Corrected this line
      ),
      child: child,
    );
  }
}
