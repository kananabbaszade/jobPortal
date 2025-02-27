import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:job_portal/core/constants/app_colors.dart';
import 'package:job_portal/data/job_list.dart';
import 'package:job_portal/pages/jobs.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.myBackground,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
              ),
              child: Text(
                "Your search for \n the next dream \n job is over 🚀",
                style: TextStyle(
                  fontFamily: "Satoshi",
                  color: AppColors.myWhite,
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              flex: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 30,
                ),
                child: myButton(),
              ),
            ),
            Expanded(
              flex: 2,
              child: SvgPicture.asset(
                'assets/svg/onboarding.svg',
              ),
            )
          ],
        ),
      ),
    );
  }

  Material myButton() {
    return Material(
      elevation: 15, // Gölgenin yoğunluğu
      shadowColor:
          AppColors.myPurple.withValues(alpha: .2), // Gölge rengi ve opaklığı
      borderRadius: BorderRadius.circular(30), // Köşeleri yuvarlatma
      child: SizedBox(
        height: 50,
        width: 330, // Butonun genişliği
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => JobsPage(jobs: jobList),
              ),
            );
          },
          style: TextButton.styleFrom(
            backgroundColor: AppColors.myPurple,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30), // Buton köşeleri
            ),
          ),
          child: Text(
            "Start Searching ->",
            style: TextStyle(
              fontFamily: "Satoshi",
              color: AppColors.myWhite,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
