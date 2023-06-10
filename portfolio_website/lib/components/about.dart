import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
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
        children: [
          Image.asset(
            "assets/images/dev.png",
            height: 200,
          ),
          const Text(
            "Namya Jain",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "I'm a Flutter Developer interested in learning Machine Learning and Cybersecurity.",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 38, 38, 38),
                  fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          const Wrap(
            runSpacing: 8.0,
            spacing: 8.0,
            children: [
              Chip(
                padding: EdgeInsets.all(8),
                label: Text(
                  "Flutter Developer",
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
          const SizedBox(
            height: 10,
          ),
          const Divider(),
          Container(
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                    child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Icon(FontAwesomeIcons.github),
                )),
                /* Column(
                  children: [Text("GitHub"), Text("Namya13Jain")],
                ) */
                Card(
                    child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Icon(FontAwesomeIcons.linkedinIn),
                )),
                Card(
                    child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Icon(FontAwesomeIcons.twitter),
                )),
                Card(
                    child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Icon(Icons.email),
                )),
                Card(
                    child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Icon(FontAwesomeIcons.link),
                )),
                Card(
                    child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Icon(FontAwesomeIcons.medium),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
