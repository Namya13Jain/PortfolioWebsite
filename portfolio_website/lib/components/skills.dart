import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      margin: const EdgeInsets.only(
        top: 20,
      ),
      width: context.screenWidth < 900
          ? context.screenWidth * 0.9
          : context.screenWidth * 0.3,
      decoration: BoxDecoration(
        color: Colors.purple.shade50,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Skills",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          ),
          Text(
            "Technical Skills",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          Wrap(
            children: [
              Chip(
                padding: EdgeInsets.all(8),
                label: Text(
                  "C",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Chip(
                padding: EdgeInsets.all(8),
                label: Text(
                  "C++",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Chip(
                padding: EdgeInsets.all(8),
                label: Text(
                  "Python",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          Wrap(
            children: [
              Chip(
                padding: EdgeInsets.all(8),
                label: Text(
                  "Dart",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Chip(
                padding: EdgeInsets.all(8),
                label: Text(
                  "HTML",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Chip(
                padding: EdgeInsets.all(8),
                label: Text(
                  "CSS",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
