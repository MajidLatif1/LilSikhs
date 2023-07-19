import 'package:flutter/material.dart';
import 'DetailScreen.dart';

class WeCombHair extends StatelessWidget {
  const WeCombHair({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("WHEN WE COMB HAIR"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.book),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.share),
          ),
        ],
      ),
      body: Material(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              width: 400,
              height: 150,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 240, 239, 239),
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: Column(children: [
                SizedBox(
                  height: 25,
                ),
                Text(
                  "प्रभु पर उसके शरीर के हर बाल के साथ। हे नानक",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 30),
                Image.asset(
                  "Assets/play_icon.png",
                  height: 50,
                  width: 50,
                ),
              ]),
            ),
            SizedBox(height: 20),
            Image.asset(
              "Assets/option_3_single.png",
              fit: BoxFit.contain,
              width: 150,
              height: 150,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              width: 400,
              height: 170,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 240, 239, 239),
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "The Gurmukh meditates on the Lord with every hair of his body. O Nanak, The Gurmukh merges in truth",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "gurmukh rom rom har dhiaavai, naanak gurmukh saachi samaavi",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailScreen()),
                            );
                          },
                          child: Text(
                            "FULI SHABAD HERE",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
