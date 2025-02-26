import 'package:flutter/material.dart';
import 'package:job_portal/core/constants/app_colors.dart';

class JobDetailsCard extends StatelessWidget {
  final String text;
  final String subtext;
  final IconData icon;
  const JobDetailsCard({
    super.key,
    required this.text,
    required this.subtext,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranGenisligi = ekranBilgisi.size.width;
    final double ekranYuksekligi = ekranBilgisi.size.height;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 10,
      ),
      child: Container(
        width: 382,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        decoration: BoxDecoration(
          color: AppColors.myGrey2,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: AppColors.myWhite.withValues(alpha: .10),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Icon(
                      icon,
                      color: AppColors.myWhite,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  text,
                  style: TextStyle(
                    fontFamily: "Satoshi",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.myWhite,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                subtext,
                style: TextStyle(
                  fontFamily: "Satoshi",
                  fontSize: 14,
                  color: AppColors.myWhite,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
