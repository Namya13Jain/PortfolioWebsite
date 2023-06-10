import 'package:flutter/material.dart';
import 'package:portfolio_website/commons.dart';
import 'package:portfolio_website/components/about.dart';
import 'package:portfolio_website/components/education.dart';
import 'package:portfolio_website/components/projects.dart';
import 'package:portfolio_website/components/skills.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<Widget> navBarItems = [
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        onPressed: () {},
        child: const Text(
          "About",
          style: buttonStyle,
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        onPressed: () {
          const Education();
        },
        child: const Text(
          "Education",
          style: buttonStyle,
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        onPressed: () {},
        child: const Text(
          "Projects",
          style: buttonStyle,
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        onPressed: () {},
        child: const Text(
          "Achievements",
          style: buttonStyle,
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        onPressed: () {},
        child: const Text(
          "Skills",
          style: buttonStyle,
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        onPressed: () {},
        child: const Text(
          "Contact",
          style: buttonStyle,
        ),
      ),
    ),
  ];
  bool isMobile = false;
  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;
    return Scaffold(
      appBar: AppBar(
        //title: Text("Namya"),
        actions: isMobile ? null : navBarItems,
      ),
      drawer: isMobile
          ? Drawer(
              child: ListView(
                children: navBarItems,
              ),
            )
          : null,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  About(),
                  Education(),
                ],
              ),
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Skills(),
                  Projects(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
