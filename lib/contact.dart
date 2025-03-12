import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:port_site/util.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  Color _instagramColor = Colors.black54;

  Color _linkedinColor = Colors.black54;

  Color _lineColor = Colors.black54;

  Color _envelopeColor = Colors.black54;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            width: size.width * 0.7,
            //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Left Section - Contact Info
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Let's collaborate",
                        style: TextStyle(
                            fontSize: 60, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "hariras@augmaimaginarium.com".toUpperCase(),
                        style: TextStyle(color: Colors.red[900], fontSize: 20),
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        "Find us",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(height: 10),
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
                                launchURL(
                                    'mailto:hariras@augmaimaginarium.com');
                              },
                              child: Icon(FontAwesomeIcons.envelope,
                                  color: _envelopeColor,
                                  size: size.width * 0.0175),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      // const Text(
                      //   "Saigon, Vietnam",
                      //   style: TextStyle(
                      //       fontWeight: FontWeight.bold, fontSize: 16),
                      // ),
                      // const Text("+84 (0) 28 3636 1354",
                      //     style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),

                // Right Section - Contact Form
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Say hello",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),

                      // Name Field
                      _buildInputField("NAME", "Your name"),

                      // Company Field
                      _buildInputField("COMPANY", "Your company"),

                      // Subject Field
                      _buildInputField("SUBJECT", "Choose subject"),

                      // Email Field
                      _buildInputField("EMAIL", "Email address"),

                      // Message Field
                      _buildInputField("MESSAGE", "Start typing here",
                          maxLines: 3),

                      const SizedBox(height: 20),

                      // Submit Button
                      GestureDetector(
                        onTap: () {
                          // Add submit action here
                          print("Form Submitted");
                        },
                        child: Row(
                          children: [
                            const Text(
                              "Submit",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 5),
                            const Icon(Icons.arrow_forward, size: 18),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Function to create input fields
  Widget _buildInputField(String label, String hintText, {int maxLines = 1}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          const SizedBox(height: 5),
          TextField(
            maxLines: maxLines,
            decoration: InputDecoration(
              hintText: hintText,
              border: const UnderlineInputBorder(),
              contentPadding: const EdgeInsets.symmetric(vertical: 5),
            ),
          ),
        ],
      ),
    );
  }
}

// Style for social media links
const TextStyle linkStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontSize: 14,
);
