import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  CustomDotIndicator({super.key, required this.isActive});

  bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isActive ? 32 : 8,
      height: 8,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: isActive
            ? const Color(0xFF4EB7F2)
            : const Color(
                0xFFE8E8E8,
              ),
      ),
    );
  }
}
