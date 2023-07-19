import 'package:flutter/material.dart';
import 'package:lilsikh/WeCombHair.dart';

class HomePage extends StatelessWidget {
  //const HomePage({super.key});
  final List<String> myImages = [
    ("Assets/option_1.png"),
    ("Assets/option_2.png"),
    ("Assets/option_3.png"),
    ("Assets/option_4.png"),
    ("Assets/option_5.png"),
    ("Assets/option_6.png"),
    ("Assets/option_7.png"),
    ("Assets/option_8.png"),
    ("Assets/option_9.png"),
    ("Assets/option_10.png"),
    ("Assets/option_11.png"),
    ("Assets/option_12.png"),
    ("Assets/option_13.png"),
    ("Assets/option_14.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lil Sikh Prayer"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.message_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: myImages.length,
          itemBuilder: (context, index) {
            final myImage = myImages[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WeCombHair()),
                );
              },
              child: GridTile(child: Image.asset(myImage)),
            );
          }),
      // GridView.builder(
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 2,
      //     ),
      //     itemCount: myImages.length,
      //     itemBuilder: (context, index) {
      //       return GestureDetector(
      //         onTap: () {
      //           Navigator.pushReplacement(
      //             context,
      //             MaterialPageRoute(builder: (context) => WeCombHair()),
      //           );
      //         },
      //       );
      //     }),

      // body: GridView.count(
      //   crossAxisCount: 2,
      //   mainAxisSpacing: 10,
      //   crossAxisSpacing: 10,
      //   children: [...myImages],
      // )
    );
  }
}
