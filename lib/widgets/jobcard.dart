import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:job_portal/models/jobcard_model.dart';
import 'package:job_portal/pages/details.dart';
import 'package:job_portal/widgets/chipbutton.dart';
import 'package:job_portal/widgets/viewbutton.dart';

import '../core/constants/app_colors.dart';

class JobsCard extends StatefulWidget {
  final VoidCallback onPressed;
  final String viewButtonText;
  final JobModel job;

  JobsCard({
    super.key,
    required this.job,
    required this.viewButtonText,
    required this.onPressed,
  });

  @override
  State<JobsCard> createState() => _JobsCardState();
}

class _JobsCardState extends State<JobsCard> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranGenisligi = ekranBilgisi.size.width;
    final double ekranYuksekligi = ekranBilgisi.size.height;

    return Padding(
      padding: EdgeInsets.symmetric(
        // vertical: ekranYuksekligi * 0.05,
        horizontal: ekranGenisligi / 18,
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Stack(
          children: [
            SizedBox(
              // height: ekranYuksekligi * 0.2,
              width: ekranGenisligi * 20,
              child: CustomPaint(
                painter: _Jobscard(widget.job.cardColor),
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0, left: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Container(
                              width: 48,
                              height: 48,
                              decoration: BoxDecoration(
                                color: AppColors.myBackground,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: SvgPicture.asset(
                                  'assets/svg/${widget.job.companyIcon}_icon.svg',
                                ),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.job.jobTitle,
                                style: TextStyle(
                                    color: widget.job.jobTitleColor,
                                    fontSize: 18,
                                    fontFamily: "Satoshi",
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                widget.job.companyName,
                                style: TextStyle(
                                  color: widget.job.companyNameColor,
                                  fontSize: 14,
                                  fontFamily: "Satoshi",
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          children: [
                            ChipButton(
                              icon: Icons.location_on_outlined,
                              text: widget.job.location,
                              iconColor: widget.job.locationIconColor,
                              textColor: widget.job.locationColor,
                            ),
                            ChipButton(
                              icon: Icons.school_outlined,
                              text: widget.job.experience,
                              iconColor: widget.job.experienceIconColor,
                              textColor: widget.job.experienceColor,
                            ),
                            ChipButton(
                              icon: Icons.access_time_outlined,
                              text: widget.job.workType,
                              iconColor: widget.job.workTypeIconColor,
                              textColor: widget.job.workTypeColor,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: SizedBox(
                          height: 40,
                          child: Text(
                            softWrap: true,
                            textAlign: TextAlign.start,
                            widget.job.jobDescription,
                            style: TextStyle(
                              color: widget.job.jobDescriptionColor,
                              fontSize: 14,
                              fontFamily: "Satoshi",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 180, left: 0, right: 0),
              child: Container(
                height: 65,
                width: ekranGenisligi * 20,
                decoration: BoxDecoration(
                  color: AppColors.myWhite,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 5),
                          child: SizedBox(
                            height: 20,
                            width: 20,
                            child: SvgPicture.asset(
                              'assets/svg/return.svg',
                            ),
                          ),
                        ),
                        Text(
                          "Posted ${widget.job.postedTime} days ago",
                          style: const TextStyle(
                            color: AppColors.myBlack,
                            fontSize: 14,
                            fontFamily: "Satoshi",
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        "\$${widget.job.salary} K/mo",
                        style: const TextStyle(
                            color: AppColors.myBlack,
                            fontSize: 18,
                            fontFamily: "Satoshi",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: ekranGenisligi * 0.03,
              child: ViewButton(
                text: widget.viewButtonText,
                onPressed: widget.onPressed,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Jobscard extends CustomPainter {
  final Color color;

  _Jobscard(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(252.134, 0);
    path_0.lineTo(22.9847, 0);
    path_0.cubicTo(15.3464, 0, 0.0697979, 4.5217, 0.0697979, 22.6085);
    path_0.lineTo(0.0697979, 202.511);
    path_0.cubicTo(-0.657659, 212.34, 3.99807, 232, 28.4406, 232);
    path_0.lineTo(355.796, 232);
    path_0.cubicTo(364.526, 231.345, 381.985, 226.228, 381.985, 210.5);
    path_0.lineTo(381.985, 99);
    path_0.cubicTo(381.985, 82, 378.561, 61.5, 351.5, 61.5);
    path_0.lineTo(323.5, 61.5);
    path_0.cubicTo(316, 61.5, 304.394, 61.5, 292.5, 56.5);
    path_0.cubicTo(287.044, 54.2064, 274, 45.5, 275.5, 20);
    path_0.cubicTo(276.147, 9, 266.5, 0, 252.134, 0);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = color;
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
