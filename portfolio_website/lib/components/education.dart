import 'package:flutter/material.dart';
import 'package:portfolio_website/commons.dart';
import 'package:timelines/timelines.dart';
import 'package:velocity_x/velocity_x.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
      ),
      padding: const EdgeInsets.all(30),
      width: context.screenWidth < 900
          ? context.screenWidth * 0.9
          : context.screenWidth * 0.5,
      decoration: BoxDecoration(
        color: Colors.purple.shade50,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Education",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          //10th class
          Timeline.tileBuilder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            builder: TimelineTileBuilder.fromStyle(
              indicatorStyle: IndicatorStyle.outlined,
              itemCount: 1,
              contentsAlign: ContentsAlign.alternating,
              contentsBuilder: (context, index) {
                return const Card(
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "2019",
                          style: yearStyle,
                        ),
                        Text(
                          "Class 10",
                          style: classStyle,
                        ),
                        Text(
                          "Mother Mary's School (CBSE)",
                          style: InstituteStyle,
                        ),
                        Text(
                          "Percentage: 96.4%",
                          style: aggStyle,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          /// 12th class
          Timeline.tileBuilder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            builder: TimelineTileBuilder.fromStyle(
              indicatorStyle: IndicatorStyle.outlined,
              itemCount: 1,
              contentsAlign: ContentsAlign.reverse,
              contentsBuilder: (context, index) {
                return const Card(
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "2021",
                          style: yearStyle,
                        ),
                        Text(
                          "Class 12",
                          style: classStyle,
                        ),
                        Text(
                          "Mother Mary's School (CBSE)",
                          style: InstituteStyle,
                        ),
                        Text(
                          "Percentage: 98.5%",
                          style: aggStyle,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          //college
          Timeline.tileBuilder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            builder: TimelineTileBuilder.fromStyle(
              indicatorStyle: IndicatorStyle.outlined,
              itemCount: 1,
              contentsAlign: ContentsAlign.alternating,
              contentsBuilder: (context, index) {
                return const Card(
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "2021-2025",
                          style: yearStyle,
                        ),
                        Text(
                          "B.Tech Information Technology",
                          style: classStyle,
                        ),
                        Text(
                          "Indira Gandhi Delhi Technical University for Women",
                          style: InstituteStyle,
                        ),
                        Text(
                          "CGPA: 9.16",
                          style: aggStyle,
                        ),
                      ],
                    ),
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
