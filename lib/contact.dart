import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _companyController = TextEditingController();
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

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
                                launchURL(SocialLinks().instgram);
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
                                launchURL(SocialLinks().linkedIn);
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
                                launchURL(SocialLinks().line);
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
                                launchURL(SocialLinks().emailLink);
                              },
                              child: Icon(FontAwesomeIcons.envelope,
                                  color: _envelopeColor,
                                  size: size.width * 0.0175),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),

                // Right Section - Contact Form
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),

                      // Name Field
                      _buildInputField("NAME", "Your name", _nameController),

                      // Company Field
                      _buildInputField(
                          "COMPANY", "Your company", _companyController),

                      // Subject Field
                      _buildInputField(
                          "SUBJECT", "Choose subject", _subjectController),

                      // Email Field
                      _buildInputField(
                          "EMAIL", "Email address", _emailController),

                      // Message Field
                      _buildInputField(
                          "MESSAGE", "Start typing here", _messageController,
                          maxLines: 3),

                      const SizedBox(height: 20),

                      // Submit Button
                      InkWell(
                        onTap: () async {
                          await _submitForm();
                          _showSubmissionCompleteDialog(context);
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              const Text(
                                "Submit",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              const SizedBox(width: 5),
                              const Icon(Icons.arrow_forward,
                                  size: 18, color: Colors.white),
                            ],
                          ),
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
  Widget _buildInputField(
      String label, String hintText, TextEditingController controller,
      {int maxLines = 1}) {
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
            controller: controller,
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

  Future<void> _submitForm() async {
    await FirebaseFirestore.instance
        .collection('contacts')
        .doc(DateTime.now.toString())
        .set({
      'name': _nameController.text,
      'company': _companyController.text,
      'subject': _subjectController.text,
      'email': _emailController.text,
      'message': _messageController.text,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }

  void _showSubmissionCompleteDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Submission Complete"),
          content:
              Text("Thank you for reaching out! We will get back to you soon."),
          actions: [
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
