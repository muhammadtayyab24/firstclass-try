import 'package:flutter/material.dart';

class Laptop extends StatefulWidget {
  @override
  _LaptopState createState() => _LaptopState();
}

class _LaptopState extends State<Laptop> {
  List<dynamic> limg = [
    'https://i.insider.com/5fdcbfcbc910a400192e846c?width=700',
    'https://i.insider.com/5dc9a5383afd37405001d722?width=1136&format=jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "LapTops",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
                fontFamily: 'Hind',
                fontStyle: FontStyle.italic),
          ),
        ),
        backgroundColor: (Colors.grey.shade800),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.notifications),
              color: Colors.white,
              onPressed: () {})
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(limg.length, (index) {
          return Container(
            height: 200,
            child: Column(
              children: [
                Image.network(
                  "${limg[index]}",
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
