import 'package:flutter/material.dart';
import 'LanguageScreen.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LanguageScreen()),
                );
              },
              child: Text(
                "Langauge",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
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
              child: Text(
                  "This pangti (line is from Sri Guru Granth Sahib Jee: Ang (limb/page): 1096 Raag (medely to create the mood): Soohee ( Being away from hoe, The soul being separated from Vaheguru and meeting Vaheguru again mood) Author: Guru Nanak Dev Jee - the first Guru)"),
            );
          },
        ),
      ),
    );
  }
}
