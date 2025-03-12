import 'package:flutter/material.dart';

class AwardsPage extends StatelessWidget {
  final List<Map<String, String>> awards = [
    {
      "year": "2024",
      "title": "Prestige 300 Highflyer",
      "organization": "Prestige Thailand - Bangkok Post",
      "description":
          "Recognized as one of the top 300 highflyers in Thailand, featured in the November 2024 issue.",
      "image":
          "https://scontent.fbkk29-7.fna.fbcdn.net/v/t39.30808-6/468816487_10162696157882160_53648737924499662_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=127cfc&_nc_ohc=1gJq5RyFwawQ7kNvgGUf6x4&_nc_oc=AdgAMcIsXsKJ0-C8EwkUWFkEQSD1sD96XanTeFZJtYjZIMXqSRC7n5m5W4w8djLk1ZvaAnV7Ede_SYYdTV2C_Yt5&_nc_zt=23&_nc_ht=scontent.fbkk29-7.fna&_nc_gid=AsddDv9jmz_J6eoPyImoEbk&oh=00_AYHn7__4wBcP5RfGjAHTsgNNS1uEPpwkdIZZCdKYdwfU7g&oe=67D5DC07"
    },
    {
      "year": "2024",
      "title": "Visionary, Augmented City",
      "organization": "Prestige Thailand - Bangkok Post",
      "description":
          "Featured in the Innovator Issue, highlighting contributions to augmented reality and city innovation.",
      "image": "https://iili.io/3qIyDP9.jpg"
    },
    {
      "year": "2021",
      "title": "Cryptocurrency Panel Speaker",
      "organization": "Bangkok Post",
      "description":
          "Invited speaker on blockchain, cryptocurrency, and financial technology trends in Thailand.",
      "image":
          "https://scontent.fbkk29-8.fna.fbcdn.net/v/t39.30808-6/239454652_10159908325792160_3395493581941147137_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=833d8c&_nc_ohc=j6hg_95NOmgQ7kNvgEGyuJo&_nc_oc=AdjyNoIDeiQZsea9kdEI-vLVk0k6x3LN6PrVQGnMfpeXNRrQQKU1uaymL4suErtqiBgm12dRvtlkWRYBtE8ZFP_U&_nc_zt=23&_nc_ht=scontent.fbkk29-8.fna&_nc_gid=AIw72AmFMz98kbc_tFwgvcv&oh=00_AYGJdcnYtf72UvZJs7k4JGmqwGCv33-OvoAdV7jD47l2NQ&oe=67D5F925"
    },
    {
      "year": "2021",
      "title": "Startup Finalist - AIS Intouch Invent Builder",
      "organization": "AIS Thailand",
      "description":
          "One of the 12 finalist teams selected for the prestigious AIS startup incubator program.",
      "image": "https://iili.io/3qu5PK7.jpg"
    },
    {
      "year": "2017",
      "title": "Gaga for Gadgets",
      "organization": "Thailand Tatler Magazine",
      "description":
          "Featured in the April 2017 issue for innovations in emerging technology and gadgets.",
      "image": "https://iili.io/3qIytM7.jpg"
    },
    {
      "year": "2017",
      "title": "Driving Thailand & ASEAN with Innovations Award",
      "organization": "Royal Thai Embassy London",
      "description":
          "Recognized for Hyperloop transportation research and innovation.",
      "image": "https://iili.io/3quaHyg.jpg"
    },
    {
      "year": "2014",
      "title": "Higher International Science & Engineering Excellence Award",
      "organization": "Queen Mary University of London",
      "description":
          "Received scholarship for excellence in science and engineering studies.",
      "image": "https://via.placeholder.com/600x400"
    },
    {
      "year": "2014",
      "title": "Innovative Education Contribution Award",
      "organization": "Ministry of Education - Nakorn Nayok",
      "description":
          "Using VR technology to provide new learning experiences and running workshop.",
      "image": "https://iili.io/3qXOhEN.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Text(
              "Achievements & Recognitions",
              style: TextStyle(
                  fontSize: size.height * 0.025, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: size.width > 800 ? 4 : 1,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 1.05,
                ),
                itemCount: awards.length,
                itemBuilder: (context, index) {
                  final award = awards[index];
                  return StatefulBuilder(
                    builder: (context, setState) {
                      bool isHovered = false;
                      return MouseRegion(
                        onEnter: (_) => setState(() => isHovered = true),
                        onExit: (_) => setState(() => isHovered = false),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          decoration: BoxDecoration(
                            color: isHovered ? Colors.black : Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              // BoxShadow(
                              //   color: Colors.black26,
                              //   blurRadius: 10,
                              //   offset: Offset(0, 5),
                              // ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                    // topLeft: Radius.circular(20),
                                    // topRight: Radius.circular(20),
                                    ),
                                child: Image.network(
                                  award["image"]!,
                                  width: double.infinity,
                                  height: size.height * 0.225,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //  4
                                    SizedBox(height: 5),
                                    Text(
                                      maxLines: 1,
                                      award["title"]!,
                                      style: TextStyle(
                                        fontSize: size.height * 0.02,
                                        fontWeight: FontWeight.bold,
                                        color: isHovered
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      award["organization"]!,
                                      style: TextStyle(
                                        fontSize: size.height * 0.015,
                                        fontWeight: FontWeight.w500,
                                        color: isHovered
                                            ? Colors.white70
                                            : Colors.red[900],
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      award["description"]!,
                                      style: TextStyle(
                                        fontSize: size.height * 0.015,
                                        color: isHovered
                                            ? Colors.white70
                                            : Colors.black87,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    // Row(
                                    //   children: [
                                    //     Text(
                                    //       "Full Info",
                                    //       style: TextStyle(
                                    //         fontSize: size.height * 0.02,
                                    //         fontWeight: FontWeight.bold,
                                    //         color: isHovered
                                    //             ? Colors.white
                                    //             : Colors.black,
                                    //       ),
                                    //     ),
                                    //     SizedBox(width: 5),
                                    //     Icon(
                                    //       Icons.add,
                                    //       size: size.height * 0.03,
                                    //       color: isHovered
                                    //           ? Colors.white
                                    //           : Colors.blue,
                                    //     ),
                                    //   ],
                                    // ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
