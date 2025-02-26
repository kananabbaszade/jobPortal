import 'package:flutter/material.dart';
import 'package:job_portal/core/constants/app_colors.dart';
import 'package:flutter_svg/svg.dart';

class ViewButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const ViewButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        side: MaterialStateProperty.all(BorderSide(color: AppColors.myGrey3)),
        backgroundColor: MaterialStateProperty.all(AppColors.myGrey2),
      ),
      onPressed: onPressed,
      child: SizedBox(
        width: 55,
        height: 30,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              text,
              style: TextStyle(
                  color: AppColors.myWhite,
                  fontSize: 13,
                  fontFamily: "Satoshi",
                  fontWeight: FontWeight.bold),
            ),
            SvgPicture.asset(
              'assets/svg/send_icon.svg',
            ),
          ],
        ),
      ),
    );
  }
}
