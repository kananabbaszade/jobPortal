import 'package:flutter/material.dart';

class JobModel {
  bool isApplied;
  bool isSaved;
  final bool isClosed;
  final bool isDiscarded;
  final String jobSkills;
  final String companyIcon;
  final String jobTitle;
  final String companyName;
  final String location;
  final String experience;
  final String workType;
  final String jobDescription;
  final int postedTime;
  final double salary;
  final Color cardColor;
  final Color jobTitleColor;
  final Color companyNameColor;
  final Color locationColor;
  final Color locationIconColor;
  final Color experienceColor;
  final Color experienceIconColor;
  final Color workTypeColor;
  final Color workTypeIconColor;
  final Color jobDescriptionColor;
  final String yourRole;
  JobModel({
    this.isApplied = false,
    this.isSaved = false,
    required this.isClosed,
    required this.isDiscarded,
    required this.jobSkills,
    required this.companyIcon,
    required this.jobTitle,
    required this.companyName,
    required this.location,
    required this.experience,
    required this.workType,
    required this.jobDescription,
    required this.postedTime,
    required this.salary,
    required this.cardColor,
    required this.jobTitleColor,
    required this.companyNameColor,
    required this.locationColor,
    required this.locationIconColor,
    required this.experienceColor,
    required this.experienceIconColor,
    required this.workTypeColor,
    required this.workTypeIconColor,
    required this.jobDescriptionColor,
    required this.yourRole,
  });
}
