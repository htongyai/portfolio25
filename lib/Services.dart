import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicesPage extends StatelessWidget {
  final List<Map<String, String>> services = [
    {
      "title": "Cross Platform App & Web Development",
      "description":
          "Developing high-quality, scalable apps and websites across multiple platforms using Flutter for iOS/android/Web Apps.",
      "coverImage": "https://iili.io/3qzTDx9.jpg",
      "icon": "https://iili.io/3qzTDx9.jpg"
    },
    {
      "title": "XR (AR/VR/MR) Design & Development",
      "description":
          "Creating immersive experiences with augmented, virtual, and mixed reality technologies using Niantic Spatial (Lightship), Open XR, Meta XR Interaction Toolkit, Spark AR, and 8th Wall.",
      "coverImage": "https://iili.io/3qz57WP.jpg",
      "icon": "assets/icons/xr.png"
    },
    {
      "title": "Electronics Design & Prototype Development",
      "description":
          "Engineering electronic circuits, PCBs, and prototype hardware solutions using Custom PCB, Arduino, Raspberry Pi, ESP, and Power Electronics.",
      "coverImage": "https://iili.io/3qxtH8B.md.jpg",
      "icon": "https://iili.io/3qxtH8B.md.jpg"
    },
    {
      "title": "3D Modeling CAD/3D Assets",
      "description":
          "Designing high-detail 3D models for applications in gaming, simulation, and industry using Fusion 360 and Blender.",
      "coverImage": "https://iili.io/3qzCFGR.png",
      "icon": "assets/icons/3d_modeling.png"
    },
    {
      "title": "3D Printing & Concept Design Production",
      "description":
          "Bringing ideas to life through rapid prototyping and 3D printing technology using FDM/SLA.",
      "coverImage": "https://iili.io/3qz2rkG.jpg",
      "icon": "assets/icons/3d_printing.png"
    },
    {
      "title": "Gamification & Game Development",
      "description":
          "Integrating game mechanics and full-fledged game development for engagement-driven experiences using Unity, Flame, Unreal, Certified Gamification Design, and Kiosk Games.",
      "coverImage": "https://iili.io/3qxD9iG.png",
      "icon": "assets/icons/gamification.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: size.width * 0.95,
        height: size.height * 1,
        child: Column(
          children: [
            SizedBox(height: size.height * 0.15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: size.width * 0.05),
                Container(
                  width: size.width * 0.2,
                  height: size.height * 0.75,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("What can I do for you?",
                              style: GoogleFonts.orbitron(
                                  fontSize: 30, fontWeight: FontWeight.bold)),
                          Text(
                            "How can I help you with skills that I offer. Let's build the future together!",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey.shade800),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Image.asset(
                        'assets/topple.png',
                        height: size.height * 0.6,
                      )
                    ],
                  ),
                ),
                SizedBox(width: size.width * 0.05),

                // Services Grid
                Container(
                  width: size.width * 0.6,
                  height: size.height * 0.85,
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: services.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        childAspectRatio: 1),
                    itemBuilder: (context, index) {
                      final service = services[index];
                      return HoverCard(
                        title: service["title"]!,
                        description: service["description"]!,
                        image: service['coverImage']!,
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HoverCard extends StatefulWidget {
  final String title;
  final String description;
  final String image;

  HoverCard(
      {required this.title, required this.description, required this.image});

  @override
  _HoverCardState createState() => _HoverCardState();
}

class _HoverCardState extends State<HoverCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          padding: EdgeInsets.all(15),
          width: size.width * 0.25,
          height: size.height * 0.9,
          decoration: BoxDecoration(
            color: _isHovered ? Colors.black : Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                blurRadius: 5,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Center(
            child: Stack(
              children: [
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          alignment: Alignment.center,
                          widget.image,
                          height: size.height * 0.15,
                          width: size.width * 0.2,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        widget.title,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: _isHovered ? Colors.white : Colors.black,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        widget.description,
                        style: TextStyle(
                          fontSize: 14,
                          color: _isHovered ? Colors.white70 : Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),

                // Arrow icon (appears on hover)
                Positioned(
                  bottom: 5,
                  right: 5,
                  child: AnimatedOpacity(
                    opacity: _isHovered ? 1.0 : 1.0,
                    duration: Duration(milliseconds: 300),
                    child: Icon(Icons.arrow_forward,
                        color: _isHovered ? Colors.red : Colors.black,
                        size: 24),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
