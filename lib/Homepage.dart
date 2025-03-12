import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:port_site/util.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _instagramColor = Colors.black54;
  Color _linkedinColor = Colors.black54;
  Color _lineColor = Colors.black54;
  Color _envelopeColor = Colors.black54;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height * 0.95,
        width: size.width,
        child: Row(
          children: [
            Center(
              child: Container(
                width: size.width * 0.35,
                alignment: Alignment.center,
                color: Colors.grey[100],
                padding: EdgeInsets.all(size.width * 0.02),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: size.height * 0.2,
                      ),
                      Text(
                        "I'm a Tech Designer",
                        style: GoogleFonts.orbitron(
                            fontSize: size.width * 0.01,
                            color: Colors.red[900]),
                      ),
                      SizedBox(height: size.height * 0.005),
                      Text(
                        "M.L. Hariras Tongyai",
                        style: TextStyle(
                            fontSize: size.width * 0.0225,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(height: size.height * 0.01),
                      Text(
                        "The future isn't just built — it’s designed to inspire.",
                        style: TextStyle(
                            fontSize: size.width * 0.0125,
                            fontStyle: FontStyle.italic,
                            color: Colors.black),
                      ),
                      SizedBox(height: size.height * 0.02),
                      Text(
                        "I help bridge the gap between reality and the digital frontier by creating immersive experiences that redefine how we connect and play. By transforming spaces into interactive playgrounds, I blend technology with imagination—ensuring innovation leads to deeper engagement and unforgettable adventures. \n\nLet me help you stand out by offering cutting-edge experiences that captivate, inspire, and set you apart in a rapidly evolving digital world.",
                        style: TextStyle(
                            fontSize: size.width * 0.01, color: Colors.black54),
                      ),
                      SizedBox(height: size.height * 0.02),
                      Row(
                        children: [
                          // TextButton(
                          //   onPressed: () {},
                          //   style: ButtonStyle(
                          //     foregroundColor:
                          //         MaterialStateProperty.resolveWith<Color>(
                          //       (Set<MaterialState> states) {
                          //         if (states
                          //             .contains(MaterialState.hovered)) {
                          //           return Colors.cyan;
                          //         }
                          //         return Colors.cyan;
                          //       },
                          //     ),
                          //   ),
                          //   child: Row(
                          //     children: [
                          //       Text("More about me",
                          //           style: GoogleFonts.orbitron(
                          //               fontSize: size.width * 0.01)),
                          //       SizedBox(width: size.width * 0.005),
                          //       Icon(Icons.arrow_right_alt,
                          //           size: size.width * 0.015),
                          //     ],
                          //   ),
                          // ),
                          // SizedBox(width: size.width * 0.01),
                          TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                              ),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.black),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Let's Talk!",
                                style: GoogleFonts.nunito(
                                    fontSize: size.width * 0.01,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          MouseRegion(
                            onEnter: (_) => setState(() {
                              _instagramColor = Colors.red;
                            }),
                            onExit: (_) => setState(() {
                              _instagramColor = Colors.black54;
                            }),
                            child: GestureDetector(
                              onTap: () {
                                launchURL('https://www.instagram.com');
                              },
                              child: Icon(FontAwesomeIcons.instagram,
                                  color: _instagramColor,
                                  size: size.width * 0.0175),
                            ),
                          ),
                          SizedBox(width: size.width * 0.01),
                          MouseRegion(
                            onEnter: (_) => setState(() {
                              _linkedinColor = Colors.red;
                            }),
                            onExit: (_) => setState(() {
                              _linkedinColor = Colors.black54;
                            }),
                            child: GestureDetector(
                              onTap: () {
                                launchURL('https://www.linkedin.com');
                              },
                              child: Icon(FontAwesomeIcons.linkedin,
                                  color: _linkedinColor,
                                  size: size.width * 0.0175),
                            ),
                          ),
                          SizedBox(width: size.width * 0.01),
                          MouseRegion(
                            onEnter: (_) => setState(() {
                              _lineColor = Colors.red;
                            }),
                            onExit: (_) => setState(() {
                              _lineColor = Colors.black54;
                            }),
                            child: GestureDetector(
                              onTap: () {
                                launchURL('https://line.me');
                              },
                              child: Icon(FontAwesomeIcons.line,
                                  color: _lineColor, size: size.width * 0.0175),
                            ),
                          ),
                          SizedBox(width: size.width * 0.01),
                          MouseRegion(
                            onEnter: (_) => setState(() {
                              _envelopeColor = Colors.red;
                            }),
                            onExit: (_) => setState(() {
                              _envelopeColor = Colors.black54;
                            }),
                            child: GestureDetector(
                              onTap: () {
                                launchURL('mailto:example@example.com');
                              },
                              child: Icon(FontAwesomeIcons.envelope,
                                  color: _envelopeColor,
                                  size: size.width * 0.0175),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/cover.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
