import 'package:flutter/material.dart';

class Sumsung extends StatefulWidget {
  @override
  _SumsungState createState() => _SumsungState();
}

class _SumsungState extends State<Sumsung> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Samsung Galaxy",
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
    );
  }
}
