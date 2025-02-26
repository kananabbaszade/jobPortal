import 'package:flutter/material.dart';
import 'package:job_portal/core/constants/app_colors.dart';
import 'package:job_portal/models/jobcard_model.dart';
import 'package:job_portal/pages/details.dart';
import 'package:job_portal/widgets/mysearchbar.dart';

import '../widgets/jobcard.dart';
import '../widgets/myappbar.dart';

class JobsPage extends StatefulWidget {
  final List<JobModel> jobs;
  const JobsPage({super.key, required this.jobs});

  @override
  State<JobsPage> createState() => _JobsPageState();
}

class _JobsPageState extends State<JobsPage> {
  int selectedIndex = 0;
  List<JobModel> filteredJobs = [];

  final List<Map<String, dynamic>> filters = [
    {"label": "Discover"},
    {"label": "Saved"},
    {"label": "Applied"},
    {"label": "Closed"},
    {"label": "Discard"},
  ];

  @override
  void initState() {
    super.initState();
    filteredJobs = widget.jobs;
  }

  void filterJobs(int index) {
    setState(() {
      selectedIndex = index;

      switch (index) {
        case 0: // Discover
          filteredJobs = widget.jobs;
          break;
        case 1: // Saved
          filteredJobs =
              widget.jobs.where((job) => job.isSaved == true).toList();
          break;
        case 2: // Applied
          filteredJobs =
              widget.jobs.where((job) => job.isApplied == true).toList();
          break;
        case 3: // Closed
          filteredJobs =
              widget.jobs.where((job) => job.isClosed == true).toList();
          break;
        case 4: // Discard
          filteredJobs =
              widget.jobs.where((job) => job.isDiscarded == true).toList();
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.myBackground,
      appBar: myAppBar(
        appBarTitle: "Hello Kenan 👋",
        isBackButtonVisible: false,
        leftPadding: 20,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 15),
            child: Row(
              children: [
                Text(
                  "Find Jobs",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: "Satoshi",
                    color: AppColors.myWhite,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Arka plandaki ince çizgi
                  Positioned(
                    bottom: 15, // Çizgiyi butonların altına hizala
                    left: 10,
                    right: 10,
                    child: Container(
                      height: 8, // Çizginin kalınlığı
                      color: AppColors.myGrey,
                    ),
                  ),
                  Row(
                    children: List.generate(filters.length, (index) {
                      bool isSelected = selectedIndex == index;
                      return GestureDetector(
                        onTap: () {
                          filterJobs(index);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? AppColors.myPurple
                                  : AppColors.myGrey,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Text(
                              filters[index]["label"],
                              style: TextStyle(
                                fontFamily: "Satoshi",
                                fontWeight: FontWeight.bold,
                                color: isSelected
                                    ? AppColors.myWhite
                                    : AppColors.myBlack,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
          mySearchBar(),
          Expanded(
            child: ListView.builder(
              itemCount: filteredJobs.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailsPage(job: filteredJobs[index]),
                      ),
                    );
                  },
                  child: JobsCard(
                    job: filteredJobs[index],
                    viewButtonText: "View",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailsPage(job: filteredJobs[index]),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
