import 'package:flutter/material.dart';
import 'package:job_portal/data/job_list.dart';
import 'package:job_portal/pages/details.dart';
import 'package:job_portal/pages/jobs.dart';
import 'package:job_portal/pages/onboarding.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Shape Editor',
      home: OnBoardingPage(),
    );
  }
}
