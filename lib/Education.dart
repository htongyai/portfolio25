import 'package:flutter/material.dart';

class EducationAndCertificationPage extends StatelessWidget {
  final List<Map<String, String>> education = [
    {
      "title": "Gamification and Behavioural Design Certification",
      "year": "2022",
      "institution": "Thammasat University - Bangkok, Thailand"
    },
    {
      "title": "AI Business Analytics: Decision Making Using Data",
      "year": "2019",
      "institution": "University of Cambridge"
    },
    {
      "title": "MSc Artificial Intelligence and Robotics",
      "year": "2017-2019",
      "institution": "King’s College London - London, United Kingdom"
    },
    {
      "title": "BEng Electronics & Electrical Engineering",
      "year": "2014-2017",
      "institution": "Queen Mary, University of London"
    },
    {
      "title": "International Baccalaureate Diploma",
      "year": "2003-2012",
      "institution": "Bangkok Patana School - Bangkok, Thailand"
    },
  ];
  final List<Map<String, String>> awards = [
    {
      "year": "2024",
      "title": "Prestige 300 Highflyer",
      "organization": "Prestige Thailand - Bangkok Post",
      "description":
          "Recognized as one of the top 300 highflyers in Thailand, featured in the November 2024 issue."
    },
    {
      "year": "2024",
      "title": "Visionary, Augmented City",
      "organization": "Prestige Thailand - Bangkok Post",
      "description":
          "Featured in the Innovator Issue, highlighting contributions to augmented reality and city innovation."
    },
    {
      "year": "2021",
      "title": "Cryptocurrency Panel Speaker",
      "organization": "Bangkok Post",
      "description":
          "Invited speaker on blockchain, cryptocurrency, and financial technology trends in Thailand."
    },
    {
      "year": "2021",
      "title": "Startup Finalist - AIS Intouch Invent Builder",
      "organization": "AIS Thailand",
      "description":
          "One of the 12 finalist teams selected for the prestigious AIS startup incubator program."
    },
    {
      "year": "2017",
      "title": "Gaga for Gadgets",
      "organization": "Thailand Tatler Magazine",
      "description":
          "Featured in the April 2017 issue for innovations in emerging technology and gadgets."
    },
    {
      "year": "2017",
      "title": "Driving Thailand & ASEAN with Innovations Award",
      "organization": "Royal Thai Embassy London",
      "description":
          "Recognized for Hyperloop transportation research and innovation."
    },
    {
      "year": "2014",
      "title": "Higher International Science & Engineering Excellence Award",
      "organization": "Queen Mary University of London",
      "description":
          "Received scholarship for excellence in science and engineering studies."
    },
    // {
    //   "year": "2014",
    //   "title": "Dean’s List for Foundational Studies",
    //   "organization": "University of Westminster",
    //   "description":
    //       "Achieved academic excellence and placed on the Dean’s List."
    // },
    // {
    //   "year": "2012",
    //   "title": "Student Speaker - TechEx",
    //   "organization": "Bangkok Patana School",
    //   "description":
    //       "Selected as a speaker for TechEx, presenting innovations in technology and engineering."
    // },
  ];
  final List<Map<String, String>> workExperience = [
    {
      "title": "Developer",
      "company": "Social Climbers App",
      "location": "Bangkok, Thailand",
      "year": "Oct 2024 - Present",
      "description":
          "Urban Gamified XR Infra-tech - Developed 'Augmented BKK', an AR mobile game transforming Bangkok’s parks into interactive adventure landscapes. Utilized Niantic's Lightship ARDK and VPS System for an immersive experience."
    },
    {
      "title": "Founder",
      "company": "Augma Imaginarium Co.Ltd",
      "location": "Bangkok, Thailand",
      "year": "Apr 2024 - Present",
      "description":
          "Urban Gamified XR Infra-tech - Developed 'Augmented BKK', an AR mobile game transforming Bangkok’s parks into interactive adventure landscapes. Utilized Niantic's Lightship ARDK and VPS System for an immersive experience."
    },
    {
      "title": "Director",
      "company": "BaanARVR",
      "location": "Thailand",
      "year": "Jan 2023 - Jun 2024",
      "description":
          "Gamified XR Tourism Experience - Launched a Tourism Campaign with The Tourism Authority of Thailand using Spark AR Filters. Introduced XR lectures and workshops for students. Developed 'Koh AR', a Lightship AR game retelling local folklore stories."
    },
    {
      "title": "Chief Technology Officer",
      "company": "KUN Inter Group",
      "location": "Bangkok, Thailand",
      "year": "Feb 2022 - Jun 2024",
      "description":
          "Managed technology strategies for multiple subsidiaries. Launched an E-Commerce Skincare online store for DrSomsak. Established IT infrastructures and developed marketing solutions, including XR experiences."
    },
    {
      "title": "Game Development Lead",
      "company": "Animetal",
      "location": "Bangkok, Thailand",
      "year": "Jan 2022 - Dec 2022",
      "description":
          "Developed 'Animetal Magnet Hero', a Web3 NFT-based game. Designed gameplay mechanics, PVP, PVE, and an engaging narrative integrating blockchain and NFT assets."
    },
    {
      "title": "Co-Founder and CTO",
      "company": "Omniactive Co.Ltd. (Motiwatt)",
      "location": "Bangkok, Thailand",
      "year": "Mar 2020 - Oct 2021",
      "description":
          "Gamified Health and Fitness Experience - Developed an MVP product, participated in AIS Intouch Invent Builder Program, and designed front-end and back-end solutions for user engagement."
    },
    {
      "title": "Project Director",
      "company": "Thonburi Hospital",
      "location": "Bangkok, Thailand",
      "year": "Jun 2021 - Sep 2021",
      "description":
          "Led the implementation of Utility Tokens for healthcare investments and hospital usage. Developed real-world use strategies and collaborated with SEC regulations."
    }
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        padding: EdgeInsets.all(30),
        child: Row(
          children: [
            Center(
              child: Container(
                height: size.height * 0.8,
                width: size.width * 0.3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/professional.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(20),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Hello, I'm [Your Name].\nI build ideas and help others shape theirs.",
                    style: TextStyle(
                        color: Colors.blueGrey.shade900,
                        fontSize: size.height * 0.015),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Got a question?",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            SizedBox(height: 5),
                            Text("Get in touch",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black)),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Stay in the loop",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            SizedBox(height: 5),
                            Text("Subscribe",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black)),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("I'm on socials",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            SizedBox(height: 5),
                            Text("Follow me on x.com",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black)),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "About Me",
                                style: TextStyle(
                                    fontSize: size.width * 0.0225,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              SizedBox(height: 20),
                              Text("Work Experience",
                                  style: TextStyle(
                                      fontSize: size.height * 0.015,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueGrey.shade900)),
                              SizedBox(height: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: workExperience.map((exp) {
                                  return Container(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            exp["title"]! +
                                                " -  " +
                                                exp["company"]!,
                                            style: TextStyle(
                                                fontSize: size.height * 0.012,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    Colors.blueGrey.shade900)),
                                        SizedBox(height: 4),
                                        Text(
                                            "${exp["year"] ?? ""} ${exp["location"] ?? ""}",
                                            style: TextStyle(
                                                fontSize: size.height * 0.012,
                                                color:
                                                    Colors.blueGrey.shade900)),
                                        SizedBox(height: 4),
                                        Container(
                                          width: size.width * 0.3,
                                          child: Text(
                                              "${exp["description"] ?? ""}}",
                                              style: TextStyle(
                                                  fontSize: size.height * 0.01,
                                                  color: Colors
                                                      .blueGrey.shade900)),
                                        ),
                                      ],
                                    ),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.02,
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Education & Certification",
                                  style: TextStyle(
                                      fontSize: size.height * 0.015,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueGrey.shade900)),
                              SizedBox(height: 10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: education.map((edu) {
                                  return Container(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 2.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(edu["title"]!,
                                            style: TextStyle(
                                                fontSize: size.height * 0.012,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    Colors.blueGrey.shade900)),
                                        SizedBox(height: 4),
                                        Text(
                                            "${edu["year"]} - ${edu["institution"]}",
                                            style: TextStyle(
                                                fontSize: size.height * 0.012,
                                                color:
                                                    Colors.blueGrey.shade900)),
                                      ],
                                    ),
                                  );
                                }).toList(),
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Text("Awards and Recognition",
                                  style: TextStyle(
                                      fontSize: size.height * 0.015,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueGrey.shade900)),
                              SizedBox(height: 10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: awards.map((edu) {
                                  return Container(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 4.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(edu["title"]!,
                                            style: TextStyle(
                                                fontSize: size.height * 0.012,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    Colors.blueGrey.shade900)),
                                        SizedBox(height: 4),
                                        Text(
                                            "${edu["year"]} - ${edu["organization"]}",
                                            style: TextStyle(
                                                fontSize: size.height * 0.012,
                                                color:
                                                    Colors.blueGrey.shade900)),
                                        Container(
                                          width: size.width * 0.3,
                                          child: Text(
                                              "${edu["description"] ?? ""}}",
                                              style: TextStyle(
                                                  fontSize: size.height * 0.01,
                                                  color: Colors
                                                      .blueGrey.shade900)),
                                        ),
                                      ],
                                    ),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // Align(
                    //   alignment: Alignment.centerRight,
                    //   child: ElevatedButton(
                    //     onPressed: () {},
                    //     style: ElevatedButton.styleFrom(
                    //       padding:
                    //           EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    //     ),
                    //     child: Text("Book a session",
                    //         style: TextStyle(
                    //             color: Colors.black,
                    //             fontSize: size.height * 0.02)),
                    //   ),
                    // ),
                    SizedBox(
                      height: size.height * 0.01,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
