// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int count = 0;
  counter() {
    setState(() {
      count++;
    });
  }

  reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(184, 49, 33, 47),
        centerTitle: true,
        title: Text(
          "  وَأَحْسِنُوا إِنَّ اللَّهَ يُحِبُّ الْمُحْسِنِينَ :) ",
          style: TextStyle(
              fontSize: 25,
              color: Color.fromARGB(255, 222, 217, 220),
              fontWeight: FontWeight.w700),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 215, 195, 207),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text("اسْتَغْفِرُوا رَبَّكُمْ إِنَّهُ كَانَ غَفَّارًا",style: TextStyle(fontSize: 30),),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.50,
                  height: MediaQuery.of(context).size.width / 1.50,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 84, 64, 77),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(1, 9),
                            color: Color.fromARGB(255, 168, 161, 161)
                                .withOpacity(.5),
                            spreadRadius: 8,
                            blurRadius: 20)
                      ]),
                  child: Center(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 233, 220, 220),
                      ),
                      child: Text(
                        count.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Transform.translate(
                  offset: Offset(0, -0),
                  child: Container(
                    width: 190,
                    height: 190,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 84, 64, 77),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 4),
                              color: Color.fromARGB(255, 175, 160, 160)
                                  .withOpacity(.5),
                              spreadRadius: 5,
                              blurRadius: 5),
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () => counter(),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 31, 46, 33),
                                shape: BoxShape.circle),
                          ),
                          style: ElevatedButton.styleFrom(
                              maximumSize: Size(80, 80)),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () => reset(),
                              child: Icon(
                                Icons.wifi_protected_setup_sharp,
                                size: 33,
                              ),
                              style: ElevatedButton.styleFrom(
                                  foregroundColor:
                                      Color.fromARGB(255, 224, 132, 132),
                                  elevation: 20),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
