import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CusomButton extends StatelessWidget {
  CusomButton({
    super.key,
    this.backgroundColor,
    this.textColor,
    required this.text,
  });

  Color? backgroundColor, textColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
          backgroundColor: backgroundColor ?? const Color(0xFF4EB7F2),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: AppStyles.SemiBold18(context).copyWith(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
