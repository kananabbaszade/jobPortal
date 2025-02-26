import 'package:flutter/material.dart';
import 'package:job_portal/core/constants/app_colors.dart';
import 'package:job_portal/models/jobcard_model.dart';
import 'package:job_portal/widgets/custom_bottombar.dart';
import 'package:job_portal/widgets/jobcard.dart';
import 'package:job_portal/widgets/jobdetailscard.dart';
import 'package:job_portal/widgets/myappbar.dart';

class DetailsPage extends StatelessWidget {
  final JobModel job;

  const DetailsPage({Key? key, required this.job}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.myBackground,
      appBar: myAppBar(
        appBarTitle: "Job Details",
        isBackButtonVisible: true,
        leftPadding: 0,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 80),
              child: Column(
                children: [
                  JobsCard(
                    job: job,
                    viewButtonText: "About",
                    onPressed: () {
                      //
                    },
                  ),
                  JobDetailsCard(
                    icon: Icons.edit_outlined,
                    text: "Job Description",
                    subtext: job.jobDescription,
                  ),
                  JobDetailsCard(
                    icon: Icons.task_alt_sharp,
                    text: "Skills & Requirements",
                    subtext: job.jobSkills,
                  ),
                  JobDetailsCard(
                    icon: Icons.person_outline_sharp,
                    text: "Your Role",
                    subtext: job.yourRole,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 20,
            right: 20,
            bottom: 20,
            child: CustomBottomBar(job: job),
          ),
        ],
      ),
    );
  }
}
