import 'package:flutter/animation.dart';
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

void goTo(index, _scrollController) {
  _scrollController.animateTo(
    index,
    duration: Duration(milliseconds: 500),
    curve: Curves.easeInOut,
  );
  currentIndex = index;
}
