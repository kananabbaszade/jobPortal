import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core/constants/app_colors.dart';

// ignore: camel_case_types
class mySearchBar extends StatelessWidget {
  const mySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xFF282828), // Koyu gri arka plan
                borderRadius: BorderRadius.circular(12), // Yuvarlak köşeler
              ),
              child: TextField(
                style: TextStyle(
                  color: AppColors.myWhite,
                ), // Yazı rengi
                decoration: InputDecoration(
                  hintText: "Search for company or roles...",
                  hintStyle: const TextStyle(
                    color: AppColors.myWhite,
                    fontSize: 14,
                    fontFamily: "Satoshi",
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SvgPicture.asset(
                      'assets/svg/search.svg',
                    ),
                  ),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 12,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 12), // Araya boşluk
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF282828), // Aynı renk
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                'assets/svg/filter.svg',
              ),
              onPressed: () {
                // Filtreleme butonuna tıklanınca olacak işlemler buraya
              },
            ),
          ),
        ],
      ),
    );
  }
}
