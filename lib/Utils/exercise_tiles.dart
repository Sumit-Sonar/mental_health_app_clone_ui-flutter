// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ExerciseList extends StatelessWidget {
  final icon;
  final String exercisename;
  final String exercisenumber;

  const ExerciseList({
    Key? key,
    required this.icon,
    required this.exercisename,
    required this.exercisenumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        // ignore: prefer_const_constructors
        padding: EdgeInsets.all(12),
        child: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                // ignore: prefer_const_constructors
                padding: EdgeInsets.all(14),
                color: Colors.orangeAccent,
                // ignore: prefer_const_constructors
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
            ),

            SizedBox(
              width: 10,
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  exercisename,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  exercisenumber,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 80,
            ),
            Icon(
              Icons.more_horiz,
              color: Colors.black54,
            )
          ],
        ),
      ),
    );
  }
}
