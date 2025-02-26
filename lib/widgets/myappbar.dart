import 'package:flutter/material.dart';

import '../core/constants/app_colors.dart';

// ignore: camel_case_types
class myAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String appBarTitle;
  final bool isBackButtonVisible;
  final double leftPadding;

  const myAppBar({
    super.key,
    required this.leftPadding,
    required this.appBarTitle,
    required this.isBackButtonVisible,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      automaticallyImplyLeading: isBackButtonVisible,
      iconTheme: const IconThemeData(
        color: AppColors.myWhite,
      ),
      titleSpacing: 0,
      title: Padding(
        padding: EdgeInsets.only(left: leftPadding, right: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              appBarTitle,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: "Satoshi",
                color: AppColors.myWhite,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            CircleAvatar(
              radius: 24, // Çerçevenin yarıçapı
              backgroundColor: Colors.blue, // Çerçeve rengi
              child: CircleAvatar(
                radius: 100, // İçteki resmin yarıçapı
                backgroundImage:
                    AssetImage('assets/images/kenan2050.png'), // İçteki resim
              ),
            )
          ],
        ),
      ),
      centerTitle: false,
      backgroundColor: AppColors.myBackground,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
