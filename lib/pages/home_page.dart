// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mental_health_app_clone_ui/Utils/Emoticon_face.dart';
import 'package:mental_health_app_clone_ui/Utils/exercise_tiles.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Text("Mental Health App"),
      ),

      backgroundColor: Colors.blue[800],

      bottomNavigationBar: BottomNavigationBar(
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "",
              backgroundColor: Colors.blue[800]),
          BottomNavigationBarItem(
            icon: Icon(Icons.email),
            label: "",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.grade), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    //User Name Greeting

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "Hi, Sumit Sonar",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(
                          height: 10,
                        ),

                        // Date-Time
                        Text(
                          "17 Sept 2022 - 06:41pm",
                          style: TextStyle(
                            color: Colors.blue[200],
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),

                    //notification
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.all(12),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: 27,
                      ),
                    )
                  ]),

              SizedBox(
                height: 30,
              ),

              //Search
              // ignore: avoid_unnecessary_containers
              Container(
                decoration: BoxDecoration(
                    color: Colors.white60,
                    borderRadius: BorderRadius.circular(12)),
                padding: EdgeInsets.all(15),
                child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white70,
                        size: 30,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Search",
                        style: TextStyle(color: Colors.white70, fontSize: 20),
                      )
                    ]),
              ),

              SizedBox(
                height: 30,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "How Do You Feel?",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.more_horiz_outlined,
                    color: Colors.white,
                  )
                ],
              ),

              SizedBox(
                height: 25,
              ),

              //bad
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Emoticonface(
                        emoticonFace: '😩',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Bad",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Emoticonface(
                        emoticonFace: '😊',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Good",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Emoticonface(
                        emoticonFace: '😇',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Well",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Emoticonface(
                        emoticonFace: '😍',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Excillent",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),

              Expanded(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  padding: EdgeInsets.all(25),
                  color: Colors.white70,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "Exercises",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.more_horiz,
                            color: Colors.black,
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 10,
                      ),

                      //Listview
                      Expanded(
                        child: ListView(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            ExerciseList(
                              icon: Icons.favorite,
                              exercisename: "Speaking Skills",
                              exercisenumber: "16 Exercises",
                            ),
                            ExerciseList(
                              icon: Icons.headphones,
                              exercisename: "Listening Skills",
                              exercisenumber: "10 Exercises",
                            ),
                            ExerciseList(
                              icon: Icons.music_note,
                              exercisename: "Writing Skills",
                              exercisenumber: "12 Exercises",
                            ),
                            ExerciseList(
                              icon: Icons.file_download,
                              exercisename: "File Download",
                              exercisenumber: "17 Exercises",
                            ),
                            ExerciseList(
                              icon: Icons.deck,
                              exercisename: "Deck",
                              exercisenumber: "14 Exercises",
                            ),
                            ExerciseList(
                              icon: Icons.pages,
                              exercisename: "Pages",
                              exercisenumber: "19 Exercises",
                            ),
                            ExerciseList(
                              icon: Icons.kayaking,
                              exercisename: "Kayaking",
                              exercisenumber: "15 Exercises",
                            ),
                            ExerciseList(
                              icon: Icons.train,
                              exercisename: "Train",
                              exercisenumber: "16 Exercises",
                            ),
                            ExerciseList(
                              icon: Icons.unarchive,
                              exercisename: "Unarchive",
                              exercisenumber: "13 Exercises",
                            ),
                            ExerciseList(
                              icon: Icons.radar,
                              exercisename: "Radar",
                              exercisenumber: "18 Exercises",
                            ),
                            ExerciseList(
                              icon: Icons.gamepad,
                              exercisename: "Gamepad",
                              exercisenumber: "17 Exercises",
                            ),
                            ExerciseList(
                              icon: Icons.light_mode,
                              exercisename: "Light_mode",
                              exercisenumber: "11 Exercises",
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
      // ignore: prefer_const_literals_to_create_immutables\
    );
  }
}
