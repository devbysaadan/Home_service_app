import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double height;
  final String? iconPath;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.height,
    this.iconPath,
    required this.backgroundColor,
    this.textColor = Colors.white,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final bool hasIcon = iconPath != null && iconPath!.isNotEmpty;

    return SizedBox(
      height: height,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(38),
            side: backgroundColor == Colors.white ? const BorderSide(color: Colors.grey, width: 0.5) : BorderSide.none,

          ),

          elevation: 0,
        ),
        child:hasIcon
            ? Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              iconPath!,
              height: 24,
              width: 24,
            ),
            const SizedBox(width: 12),
            Text(
              text,
              style: TextStyle(color: textColor, fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ],
        )
            : Center(
          child: Text(
            text
            ,style: TextStyle(color: textColor,fontSize: 18),
          ),
        ),
      ),
    );
  }
}