import 'package:better_player_plus/better_player_plus.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class VideoPlayer2 extends StatefulWidget {
  const VideoPlayer2({super.key});

  @override
  State<VideoPlayer2> createState() => _VideoPlayer2State();
}

class _VideoPlayer2State extends State<VideoPlayer2> {
  List<Map<String, dynamic>> menu = [
    {
      "item": "Fries",
      "non.items": "BK Chicken Pizza Puff",
    },
    {
      "item": "ABERDEEN ANGUS",
      "non.items": "BK Chicken Burger",
    },
    {
      "item": "PLANT-BASED KINGS",
      "non.items": "Crispy Chicken Double Patty Burger",
    },
    {
      "item": "VEGGIE, FISH & SALAD",
      "non.items": "BK Chicken Pizza Puff + Fiery Hell Dip",
    },
    {
      "item": "Aberdeen Angus Cheese",
      "non.items": "Chicken Makhani Burst Burger with Cheese",
    },
    {
      "item": "Aberdeen Angus Steakhouse",
      "non.items": "Crunchy Chicken Nuggets (4pcs)+Fiery Hell Dip",
    },
  ];

  List _expandedList = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Video Player"),
        centerTitle: true,
        backgroundColor: Colors.green.shade100,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipPath(
              clipper: BackgroundClipper(),
              child: Container(
                height: 38.h,
                width: 100.w,
                color: Colors.black,
                child: BetterPlayer.network(
                  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
                  betterPlayerConfiguration: const BetterPlayerConfiguration(
                    autoPlay: false,
                    looping: false,
                    expandToFill: false,
                  ),
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Burger King",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.red,
                  ),
                ),
                Icon(
                  Icons.lunch_dining,
                  color: Colors.orange,
                  size: 35,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 15,
                top: 15,
              ),
              child: Text(
                "Known for: Burger King is known for its flame-grilled Whopper sandwich, food quality, and value.\nHistory: Burger King was founded in 1954 in Jacksonville,Florida as Insta-Burger King.\nIt is now the second largest fast food hamburger chain in the world.\nLocations: Burger King has over 18,700 locations in more than 100 countries and U.S. territories.",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: ExpansionTile(
                backgroundColor: Colors.white,
                collapsedBackgroundColor: Colors.grey.shade200,
                collapsedIconColor: Colors.orange,
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                collapsedShape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                childrenPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                expandedAlignment: Alignment.centerLeft,
                title: const Text(
                  "Veg.Menu",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                  ),
                ),
                iconColor: Colors.black,
                children: List.generate(
                  menu.length,
                  (index) => Container(
                    height: 25,
                    width: 420,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(
                        5,
                      ),
                    ),
                    margin: const EdgeInsets.only(
                      top: 5,
                    ),
                    child: Text(
                      "${menu[index]["item"]}",
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: ExpansionTile(
                backgroundColor: Colors.white,
                collapsedBackgroundColor: Colors.grey.shade200,
                collapsedIconColor: Colors.orange,
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                collapsedShape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                childrenPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                expandedAlignment: Alignment.centerLeft,
                title: const Text(
                  "Non Veg.Menu",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                  ),
                ),
                iconColor: Colors.black,
                // initiallyExpanded: true,
                children: List.generate(
                  menu.length,
                  (index) => Container(
                    height: 25,
                    width: 420,
                    // color: Colors.pink,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(
                        5,
                      ),
                    ),
                    margin: const EdgeInsets.only(
                      top: 5,
                    ),
                    child: Text(
                      "${menu[index]["non.items"]}",
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 20,
              child: ListView.builder(
                padding: EdgeInsets.all(8),
                itemCount: _expandedList.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2,
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('Title ${index + 1}'),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: Icon(
                                  _expandedList[index]
                                      ? Icons.expand_less
                                      : Icons.expand_more,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _expandedList = [false, false, false];
                                    _expandedList[index] =
                                        !_expandedList[index];
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        if (_expandedList[index])
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SingleChildScrollView(
                                  child: SizedBox(
                                    height: 100,
                                    child: ListView.builder(
                                      itemCount: 10,
                                      itemBuilder: (context, index) {
                                        return Text('Line ${index}');
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                    'Here is the detailed content for item ${index + 1}.'),
                              ],
                            ),
                          ),
                      ],
                    ),
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

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(100.w, 0.h);
    path.lineTo(100.w, 27.h);
    path.quadraticBezierTo(95.w, 34.h, 80.w, 33.h);
    path.lineTo(80.w, 33.h);
    path.lineTo(20.w, 33.h);
    path.quadraticBezierTo(5.w, 33.h, 0.w, 38.h);
    path.lineTo(0.w, 35.h);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
