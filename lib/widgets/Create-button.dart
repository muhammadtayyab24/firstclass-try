import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(onPressed: () {}, child: Text("Create Account")),
    );
  }
}
