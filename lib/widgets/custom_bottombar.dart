import 'package:flutter/material.dart';
import 'package:job_portal/core/constants/app_colors.dart';
import 'package:job_portal/models/jobcard_model.dart';

class CustomBottomBar extends StatefulWidget {
  final JobModel job;
  const CustomBottomBar({super.key, required this.job});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.5),
            spreadRadius: 100,
            blurRadius: 100,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Stack(
        children: [
          // Arka plandaki ince çizgi
          Positioned(
            bottom: 20, // Çizgiyi butonların altına hizala
            left: 10,
            right: 10,
            child: Container(
              height: 8, // Çizginin kalınlığı
              color: AppColors.myWhite,
            ),
          ),
          Row(
            children: [
              Container(
                height: 48,
                // width: 123,
                decoration: BoxDecoration(
                  color: AppColors.myWhite,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 10),
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      widget.job.isSaved = true;
                      Navigator.pop(context);
                    });
                  },
                  child: Text(
                    "Save",
                    style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontSize: 16,
                        color: AppColors.myBlack),
                  ),
                ),
              ),

              const SizedBox(width: 12), // Boşluk

              // Apply Now Button
              Expanded(
                child: Container(
                  height: 48,
                  // width: ,
                  decoration: BoxDecoration(
                    color: AppColors.myPurple,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: AppColors.myWhite,
                    ),
                    onPressed: () {
                      setState(() {
                        widget.job.isApplied = true;
                        Navigator.pop(context);
                      });
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Apply Now",
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.myWhite,
                            fontFamily: 'Satoshi',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.keyboard_arrow_right,
                            size: 30, color: AppColors.myWhite),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
