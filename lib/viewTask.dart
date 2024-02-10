import 'package:flutter/material.dart';
import 'package:task_management_application/editTask.dart';
import 'package:task_management_application/main.dart';

class ViewTask extends StatelessWidget {
  const ViewTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "User Research",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            child: RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "Name:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.black,
                    )
                  ),
                  TextSpan(
                    text: "User Research",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(text: '\n\n'),
                  TextSpan(
                    text: "Description:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: "Conduct user interviews or surveys to understand user needs and preferences.",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(text: '\n\n'),
                  TextSpan(
                    text: "Due Date:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: "16.02.2024",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(text: '\n\n'),
                  TextSpan(
                    text: "Completion Status:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: "80%",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(text: '\n'),
                ]
              ),
              ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const EditTask()));
              }, child: const Text("Edit"),),
              ElevatedButton(onPressed: (){
                
              }, child: const Text("Delete")),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyHomePage(title: 'Task Management App',)),);
              }, child: const Text("Task List"))
            ],
          )
        ],
      ),
    );
  }
}