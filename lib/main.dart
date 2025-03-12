import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:port_site/Awards.dart';
import 'package:port_site/Education.dart';
import 'package:port_site/Homepage.dart';
import 'package:port_site/Services.dart';
import 'package:port_site/contact.dart';
import 'package:port_site/featuredProjects.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

int currentIndex = 0;
final List<dynamic> items = [
  HomePage(),
  ServicesPage(),
  ProjectShowcasePage(),
  EducationAndCertificationPage(),
  AwardsPage(),
  ContactPage()
];
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        highlightColor: Colors.cyan,
        primaryColor: Colors.grey[200],
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
        //  hoverColor: Colors.cyan,
      ),
      home: ResponsiveHomePage(),
    );
  }
}

class ResponsiveHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 800) {
            return DesktopLayout();
          } else {
            return MobileLayout();
          }
        },
      ),
    );
  }
}

class BouncingIcon extends StatefulWidget {
  @override
  _BouncingIconState createState() => _BouncingIconState();
}

class _BouncingIconState extends State<BouncingIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);
    _animation = Tween<Offset>(
      begin: Offset(0, 0.1),
      end: Offset(0, 0.2),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          currentIndex + 1 == items.length
              ? Icon(
                  Icons.keyboard_arrow_up,
                  size: 30,
                  color: currentIndex + 1 == items.length
                      ? Colors.white
                      : Colors.grey,
                )
              : SizedBox(),
          Text(
            currentIndex + 1 == items.length ? "Back to Top" : "Explore More",
            style: GoogleFonts.orbitron(
              fontSize: 13,
              color:
                  currentIndex + 1 == items.length ? Colors.white : Colors.grey,
            ),
          ),
          currentIndex + 1 != items.length
              ? Icon(
                  Icons.keyboard_arrow_down,
                  size: 30,
                  color: currentIndex + 1 == items.length
                      ? Colors.white
                      : Colors.grey,
                )
              : SizedBox(),
        ],
      ),
    );
  }
}

class DesktopLayout extends StatefulWidget {
  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  final Map<String, Widget> pages = {
    "Home": HomePage(),
  };
  ScrollController N = ScrollController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        ListView.builder(
          controller: N,
          shrinkWrap: true,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return TweenAnimationBuilder(
                tween: Tween<double>(begin: 1.0, end: 0.0),
                duration: Duration(milliseconds: 500 + (index * 50)),
                builder: (context, value, child) {
                  return Transform.translate(
                    offset: Offset(0, value * 50),
                    child: Opacity(
                      opacity: 1 - value,
                      child: child,
                    ),
                  );
                },
                child: Container(
                    key: ValueKey<int>(index),
                    height: size.height,
                    width: size.width,
                    child: items[index]));
          },
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.black26,
                  //     blurRadius: 10,
                  //     offset: Offset(0, 5),
                  //   ),
                  // ],
                  ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image(
                        image: AssetImage("assets/icon.png"),
                        height: size.height * 0.025,
                      ),
                      SizedBox(width: size.width * 0.01),
                      Text(
                        "TONGYAI",
                        style: GoogleFonts.orbitron(
                            letterSpacing: 8, fontSize: size.width * 0.01),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Resume",
                          style: TextStyle(
                            fontSize: size.width * 0.01,
                            color: Colors.white,
                          )),
                      SizedBox(width: size.width * 0.02),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                backgroundColor: Colors.white,
                                title: Text("Menu",
                                    style:
                                        TextStyle(fontSize: size.width * 0.02)),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ListTile(
                                      title: Text("Home",
                                          style: TextStyle(
                                              fontSize: size.width * 0.015)),
                                      onTap: () {
                                        Navigator.of(context).pop();
                                        // Navigate to Home
                                      },
                                    ),
                                    ListTile(
                                      title: Text(
                                          "Education and Certifications",
                                          style: TextStyle(
                                              fontSize: size.width * 0.015)),
                                      onTap: () {
                                        Navigator.of(context).pop();
                                        // Navigate to Education and Certifications
                                      },
                                    ),
                                    ListTile(
                                      title: Text("Work Experiences",
                                          style: TextStyle(
                                              fontSize: size.width * 0.015)),
                                      onTap: () {
                                        Navigator.of(context).pop();
                                        // Navigate to Work Experiences
                                      },
                                    ),
                                    ListTile(
                                      title: Text("Award and Press",
                                          style: TextStyle(
                                              fontSize: size.width * 0.015)),
                                      onTap: () {
                                        Navigator.of(context).pop();
                                        // Navigate to Award and Press
                                      },
                                    ),
                                    ListTile(
                                      title: Text("Notable Projects",
                                          style: TextStyle(
                                              fontSize: size.width * 0.015)),
                                      onTap: () {
                                        Navigator.of(context).pop();
                                        // Navigate to Notable Projects
                                      },
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: Icon(
                          Icons.menu,
                          size: size.width * 0.02,
                          color: currentIndex > 0 ? Colors.black : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  print(currentIndex);
                  if (currentIndex < items.length - 1) {
                    print(currentIndex);
                    N.animateTo(
                      (currentIndex + 1) * size.height,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                    currentIndex++;
                  } else if (currentIndex + 1 == items.length) {
                    print(currentIndex);
                    N.animateTo(
                      0,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                    currentIndex = 0;
                  }
                });
              },
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                  color: currentIndex + 1 == items.length
                      ? Colors.black
                      : Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BouncingIcon(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class MobileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Resume", style: TextStyle(fontSize: size.width * 0.05)),
              Icon(Icons.menu, size: size.width * 0.08),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(size.width * 0.025),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            height: size.height * 0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage("assets/cover.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi! I'm a Tech Designer",
                style: TextStyle(
                    fontSize: size.width * 0.05, color: Colors.red[900]),
              ),
              SizedBox(height: 10),
              Text(
                "M.L. Hariras Tongyai",
                style: TextStyle(
                    fontSize: size.width * 0.08,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(height: 10),
              Text(
                "My journey is driven by the belief that the future isn't just built—it’s designed to inspire.",
                style: TextStyle(
                    fontSize: size.width * 0.06,
                    fontStyle: FontStyle.italic,
                    color: Colors.black),
              ),
              SizedBox(height: 20),
              Text(
                "I help bridge the gap between reality and the digital frontier by creating immersive experiences that redefine how we connect and play. By transforming spaces into interactive playgrounds, I blend technology with imagination—ensuring innovation leads to deeper engagement and unforgettable adventures. Let me help you stand out by offering cutting-edge experiences that captivate, inspire, and set you apart in a rapidly evolving digital world.",
                style: TextStyle(
                    fontSize: size.width * 0.04, color: Colors.black54),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text("More about me",
                        style: TextStyle(fontSize: size.width * 0.05)),
                    SizedBox(width: 5),
                    Icon(Icons.arrow_right_alt, size: size.width * 0.05),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(FontAwesomeIcons.instagram,
                      color: Colors.black54, size: size.width * 0.05),
                  SizedBox(width: 10),
                  Icon(FontAwesomeIcons.linkedin,
                      color: Colors.black54, size: size.width * 0.05),
                  SizedBox(width: 10),
                  Icon(FontAwesomeIcons.line,
                      color: Colors.black54, size: size.width * 0.05),
                  SizedBox(width: 10),
                  Icon(FontAwesomeIcons.envelope,
                      color: Colors.black54, size: size.width * 0.05),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
