import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:port_site/main.dart';
import 'package:url_launcher/url_launcher_string.dart';

void launchURL(String url) async {
  if (await canLaunchUrlString(url)) {
    await launchUrlString(url);
  } else {
    throw 'Could not launch $url';
  }
}
//      "I help bridge the gap between reality and the digital frontier by creating immersive experiences that redefine how we connect and play. By transforming spaces into interactive playgrounds, I blend technology with imagination—ensuring innovation leads to deeper engagement and unforgettable adventures. \n\nLet me help you stand out by offering cutting-edge experiences that captivate, inspire, and set you apart in a rapidly evolving digital world.",

void goToEm(index, scrollController, context) {
  var size = MediaQuery.of(context).size;
  print("Goto $index");
  scrollController.animateTo(
    index * size.height,
    duration: Duration(milliseconds: 500),
    curve: Curves.easeInOut,
  );
  currentIndex = index;
}

class SocialLinks {
  final String instgram = "www.instagram.com/tonythetechie";
  final String emailLink = 'mailto:hariras@augmaimaginarium.com';
  final String line = "https://line.me/ti/p/ryonDKw1BX";
  final String linkedIn =
      "https://www.linkedin.com/in/m-l-hariras-tongyai-6166018b/";
}
