import 'package:flutter/material.dart';
import 'package:job_portal/core/constants/app_colors.dart';

class ChipButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor, textColor;
  ChipButton(
      {super.key,
      required this.text,
      required this.icon,
      required this.iconColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: TextButton(
        style: ButtonStyle(
          side: MaterialStateProperty.all(
            BorderSide(
              color: AppColors.myWhite.withOpacity(0.1),
            ),
          ),
          backgroundColor:
              MaterialStateProperty.all(AppColors.myWhite.withOpacity(0.2)),
        ),
        onPressed: () {},
        child: Row(
          children: [
            Icon(icon, color: iconColor, size: 18),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 13,
                  fontFamily: "Satoshi",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
