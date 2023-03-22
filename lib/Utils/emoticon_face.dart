import 'package:flutter/material.dart';

class Emoticonface extends StatelessWidget {
  final String emoticonFace;
  const Emoticonface({Key? key, required this.emoticonFace}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue[700],
            borderRadius: BorderRadius.circular(12),
          ),

          // ignore: prefer_const_constructors
          padding: EdgeInsets.all(16),

          // ignore: prefer_const_constructors
          child: Text(
            emoticonFace,
            // ignore: prefer_const_constructors
            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
