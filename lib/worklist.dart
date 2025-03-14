import 'package:flutter/material.dart';

class PortfolioGrid extends StatelessWidget {
  final List<Map<String, String>> projects = [
    {
      'title': 'GRAB Hot Deal Kioks',
      'subtitle': 'Gamification\n6 Months',
      'image': 'https://iili.io/3fbeKG4.jpg',
      'link': 'https://example.com/gamification',
    },
    {
      'title': "Bangkok Boulder Fest 24'",
      'subtitle': 'Competition Web App\n1 Week',
      'image': 'https://iili.io/3fbLH0X.png',
      'link': 'https://example.com/competition-web-app',
    },
    {
      'title': "Aguma World",
      'subtitle': 'Game Development\n1 Month',
      'image': 'https://iili.io/3fbe2ZG.png',
      'link': 'https://example.com/game-development',
    },
    {
      'title': "Social Climber Nexus",
      'subtitle': 'iOS/Android App\n2 Months',
      'image': 'https://iili.io/3fmBeDl.jpg',
      'link': 'https://example.com/ios-android-app',
    },
    {
      'title': "Augma XR",
      'subtitle': 'Mixed Reality Development\n2 Months',
      'image': 'https://iili.io/3qBk914.png',
      'link': 'https://example.com/mixed-reality-development',
    },
    {
      'title': "Koh AR",
      'subtitle': 'AR Mobile App\n1 Week',
      'image': 'https://iili.io/3qCxzve.jpg',
      'link': 'https://example.com/ar-mobile-app',
    },
    {
      'title': 'Project 1',
      'subtitle': 'Description 1',
      'image': 'https://iili.io/3CJFCIn.png',
      'link': 'https://example.com/project-1',
    },
    {
      'title': 'Project 2',
      'subtitle': 'Description 2',
      'image': 'https://iili.io/3CJ3fob.png',
      'link': 'https://example.com/project-2',
    },
    {
      'title': 'Project 3',
      'subtitle': 'Description 3',
      'image': 'https://iili.io/3CJ32R9.jpg',
      'link': 'https://example.com/project-3',
    },
    {
      'title': 'Project 4',
      'subtitle': 'Description 4',
      'image': 'https://iili.io/3CJ3Bix.jpg',
      'link': 'https://example.com/project-4',
    },
    {
      'title': 'Project 5',
      'subtitle': 'Description 5',
      'image': 'https://iili.io/3CJ3ADg.jpg',
      'link': 'https://example.com/project-5',
    },
    {
      'title': 'Project 6',
      'subtitle': 'Description 6',
      'image': 'https://iili.io/3CJ3olV.jpg',
      'link': 'https://example.com/project-6',
    },
    {
      'title': 'Project 7',
      'subtitle': 'Description 7',
      'image': 'https://iili.io/3CJ3uOF.png',
      'link': 'https://example.com/project-7',
    },
    {
      'title': 'Project 8',
      'subtitle': 'Description 8',
      'image': 'https://iili.io/3CJ3Xxs.jpg',
      'link': 'https://example.com/project-8',
    },
    {
      'title': 'Project 9',
      'subtitle': 'Description 9',
      'image': 'https://iili.io/3CJFR7S.png',
      'link': 'https://example.com/project-9',
    },
    {
      'title': 'Project 10',
      'subtitle': 'Description 10',
      'image': 'https://iili.io/3CJ3O0l.png',
      'link': 'https://example.com/project-10',
    },
    {
      'title': 'Project 11',
      'subtitle': 'Description 11',
      'image': 'https://iili.io/3CJ3iqx.jpg',
      'link': 'https://example.com/project-11',
    },
    {
      'title': 'Project 12',
      'subtitle': 'Description 12',
      'image': 'https://iili.io/3CJF2gp.png',
      'link': 'https://example.com/project-12',
    },
    {
      'title': 'Project 13',
      'subtitle': 'Description 13',
      'image': 'https://iili.io/3CJFqmX.png',
      'link': 'https://example.com/project-13',
    },
    {
      'title': 'Project 14',
      'subtitle': 'Description 14',
      'image': 'https://iili.io/3CJFchu.png',
      'link': 'https://example.com/project-14',
    },
    {
      'title': 'Project 15',
      'subtitle': 'Description 15',
      'image': 'https://iili.io/3CJF5k7.png',
      'link': 'https://example.com/project-15',
    },
    {
      'title': 'Project 16',
      'subtitle': 'Description 16',
      'image': 'https://iili.io/3CJF1Bj.png',
      'link': 'https://example.com/project-16',
    },
    {
      'title': 'Project 17',
      'subtitle': 'Description 17',
      'image': 'https://iili.io/3CJFEEx.png',
      'link': 'https://example.com/project-17',
    },
    {
      'title': 'Project 18',
      'subtitle': 'Description 18',
      'image': 'https://iili.io/3CJFV2V.png',
      'link': 'https://example.com/project-18',
    },
    {
      'title': 'Project 19',
      'subtitle': 'Description 19',
      'image': 'https://iili.io/3CJFrvI.png',
      'link': 'https://example.com/project-19',
    },
    {
      'title': 'Project 20',
      'subtitle': 'Description 20',
      'image': 'https://iili.io/3CJuNj4.jpg',
      'link': 'https://example.com/project-20',
    },
    {
      'title': 'Project 21',
      'subtitle': 'Description 21',
      'image': 'https://iili.io/3CJAdtR.png',
      'link': 'https://example.com/project-21',
    },
    {
      'title': 'Project 22',
      'subtitle': 'Description 22',
      'image': 'https://iili.io/3CJAFMN.png',
      'link': 'https://example.com/project-22',
    },
    {
      'title': "Bon'tre AR Thai Tea Catcher",
      'subtitle': 'AR Marketing Filter\n1 Week',
      'image': 'https://iili.io/3qCxWZv.jpg',
      'link': 'https://example.com/ar-marketing-filter',
    },
    {
      'title': 'Baan AR - T-Shirt Map',
      'subtitle': 'BaanARVR\nAugmented Reality Experience',
      'image': 'https://iili.io/3CH9bl1.png',
    },
    {
      'title': "TAT-Nakorn Nayok Landmark",
      'subtitle': 'Tourism Authority of Thailand\nAR Filter Experience',
      'image': 'https://iili.io/3CH9MFt.jpg',
    },
    {
      'title': "AR Pop-Up Menu",
      'subtitle': "Drin'c\nAR Experience",
      'image': 'https://iili.io/3CH9wNf.jpg',
    },
    {
      'title': "Drin'c Featured Menu - Naka",
      'subtitle': "Drin'c\nAR Experience",
      'image': 'https://iili.io/3CH9DKP.png',
    },
    {
      'title': 'Project 23',
      'subtitle': 'Description 23',
      'image': 'https://iili.io/3CJaZMv.png',
      'link': 'https://example.com/project-23',
    },
    {
      'title': 'Project 24',
      'subtitle': 'Description 24',
      'image': 'https://iili.io/3CJawue.png',
      'link': 'https://example.com/project-24',
    },
    {
      'title': 'Project 25',
      'subtitle': 'Description 25',
      'image': 'https://iili.io/3CJaG6l.jpg',
      'link': 'https://example.com/project-25',
    },
    {
      'title': 'Project 26',
      'subtitle': 'Description 26',
      'image': 'https://iili.io/3CJaWaS.jpg',
      'link': 'https://example.com/project-26',
    },
    {
      'title': 'Project 27',
      'subtitle': 'Description 27',
      'image': 'https://iili.io/3CJa86Q.png',
      'link': 'https://example.com/project-27',
    },
    {
      'title': 'Project 28',
      'subtitle': 'Description 28',
      'image': 'https://iili.io/3CJaknj.png',
      'link': 'https://example.com/project-28',
    },
    {
      'title': 'Project 29',
      'subtitle': 'Description 29',
      'image': 'https://iili.io/3CJcHAX.png',
      'link': 'https://example.com/project-29',
    },
    {
      'title': "Drin'c Featured Menu - Latte",
      'subtitle': "Drin'c\nAR Experience",
      'image': 'https://iili.io/3CH9ZiB.png',
    },
    {
      'title': 'Augma - Fox-E Character Showcase',
      'subtitle': 'Augma World\nGeolocation AR Game',
      'image': 'https://iili.io/3CH96Ab.jpg',
    },
    {
      'title': 'Lottery Ritual - Jao Mae Takien',
      'subtitle': 'BaanAR\nAR Experience',
      'image': 'https://iili.io/3CH9QVV.jpg',
    },
    {
      'title': "Drin'c Coffee Roasting Promo Game",
      'subtitle': "Drin'c\nAR Experience",
      'image': 'https://iili.io/3CH9mUF.jpg',
    },
    {
      'title': "BUNN-E on your head",
      'subtitle': 'Augma World\nAR Face Filter',
      'image': 'https://iili.io/3CHHuWl.png',
    },
    {
      'title': 'Mayongchit Catcher',
      'subtitle': 'Tourism Authority of Thailand\nAR Game Experience',
      'image': 'https://iili.io/3CHHJDv.png',
    },
    {
      'title': 'Valani Cosmetic Face Mask Promo',
      'subtitle': 'Valani by Dr.Somsak\nAR Face Filter Promo',
      'image': 'https://iili.io/3CHHAs2.png',
    },
    {
      'title': 'Koh AR',
      'subtitle': 'Baan Na Resort\n AR Geolocation mobile Game',
      'image': 'https://iili.io/3CHHoRs.png',
    },
    {
      'title': 'BUNN-E World Scale',
      'subtitle': 'Augma World\nAR Showcase',
      'image': 'https://iili.io/3CHH3Vp.jpg',
    },
    {
      'title': "Cybertree 2023",
      'subtitle': 'Augma Imaginarium\nAR Showcase',
      'image': 'https://iili.io/3CHHYg9.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount = screenWidth > 1200
        ? 5
        : screenWidth > 800
            ? 3
            : 2;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              childAspectRatio: 0.4),
          itemCount: projects.length,
          itemBuilder: (context, index) {
            return HoverEffectCard(project: projects[index]);
          },
        ),
      ),
    );
  }
}

class HoverEffectCard extends StatefulWidget {
  final Map<String, String> project;
  HoverEffectCard({required this.project});

  @override
  _HoverEffectCardState createState() => _HoverEffectCardState();
}

class _HoverEffectCardState extends State<HoverEffectCard> {
  double _scaleFactor = 1.0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: (_) => setState(() => _scaleFactor = 1.1),
      onExit: (_) => setState(() => _scaleFactor = 1.0),
      child: Column(
        children: [
          AnimatedContainer(
            height: size.height * 0.75,
            width: size.width * 0.18,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            transform: Matrix4.identity()..scale(_scaleFactor),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: NetworkImage(widget.project['image']!),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              //  color: Colors.black.withOpacity(0.7),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.project['title']!,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  widget.project['subtitle']!,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
