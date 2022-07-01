// ignore_for_file: deprecated_member_use, file_names

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int total;
  final Function restart;
  //Function
  Result(this.total, this.restart);

  String get EndText {
    String str = "Quiz has Ended";
    return str;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //margin: EdgeInsets.all(20),
        children: [
          Text(
            "Quiz Ended!!! \n Your Final Score\n$total",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              //textColor: Colors.red,
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red)),
              onPressed: restart,
              child: Text(
                "Click to Retake Quiz",
                style: TextStyle(fontSize: 35, color: Colors.white),
              ))
        ],
      ),
    );
  }
}
