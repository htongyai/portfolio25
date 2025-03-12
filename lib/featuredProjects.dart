import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectShowcasePage extends StatelessWidget {
  final List<Map<String, String>> projects = [
    {
      "title": "Gamification",
      "duration": "6 Months",
      "image": "https://iili.io/3fbeKG4.jpg", // Replace with actual image URL
      "logo": "GRAB Hot Deal Kioks",
      "link": "https://example.com/gamification"
    },
    {
      "title": "Competition Web App",
      "duration": "1 Week",
      "image": "https://iili.io/3fbLH0X.png",
      "logo": "Bangkok Boulder Fest 24'",
      "link": "https://example.com/competition-web-app"
    },
    {
      "title": "Game Development",
      "duration": "1 Month",
      "image": "https://iili.io/3fbe2ZG.png",
      "logo": "Aguma World",
      "link": "https://example.com/game-development"
    },
    {
      "title": "iOS/Android App",
      "duration": "2 Months",
      "image": "https://iili.io/3fmBeDl.jpg",
      "logo": "Social Climber Nexus",
      "link": "https://example.com/ios-android-app"
    },
    {
      "title": "Mixed Reality Development",
      "duration": "2 Months",
      "image": "https://iili.io/3qBk914.png",
      "logo": "Augma XR",
      "link": "https://example.com/mixed-reality-development"
    },
    {
      "title": "AR Mobile App",
      "duration": "1 Week",
      "image": "https://iili.io/3qCxzve.jpg",
      "logo": "Koh AR",
      "link": "https://example.com/ar-mobile-app"
    },
    {
      "title": "AR Marketing Filter",
      "duration": "1 Week",
      "image": "https://iili.io/3qCxWZv.jpg",
      "logo": "Bon'tre AR Thai Tea Catcher",
      "link": "https://example.com/ar-marketing-filter"
    },
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height * 0.95,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: size.width * 0.95,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Featured Projects",
                          style: GoogleFonts.orbitron(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                      Text(
                        "Project's that I'm extremely proud of and enjoyed the journey!",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade800),
                      ),
                    ],
                  ),
                  Text(
                    "Most Recent",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.grey.shade800),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Project Showcase
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: projects.map((project) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: size.width * 0.225,
                        height: size.height * 0.65,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage(project["image"]!),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 10,
                              left: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "// ${project["title"]}",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      backgroundColor: Colors.black54,
                                    ),
                                  ),
                                  Text(
                                    project["duration"]!,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      backgroundColor: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: size.width * 0.225,
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              project['logo']!,
                              style: GoogleFonts.nunito(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ),

            // Logos Section

            SizedBox(height: 10),

            // Footer
          ],
        ),
      ),
    );
  }
}
