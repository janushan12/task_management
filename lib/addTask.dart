import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:task_management_application/main.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';


class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  final _formKey=GlobalKey<FormState>();
  TextEditingController nameController=TextEditingController();
  TextEditingController descriptionController=TextEditingController();
  DateTime selecteddate=DateTime.now();

  Future<void> addTask() async {
    const apiUrl = 'http://localhost:3000/tasks';

    // Format the date before sending it to the server
    final formattedDate = DateFormat('yyyy-MM-dd').format(selecteddate);

    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {'Content-Type':'application/json'},
      body: jsonEncode({
        'title':nameController.text,
        'description':descriptionController.text,
        'dueDate': formattedDate,
      })
    );

    if(response.statusCode==201) {
      // Task added successfully
      Navigator.pop(context); // Go back
    } else {
      // Handle error
      print('Error adding task: ${response.statusCode}');
    }

  } 

  Future<void> _selectdate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context, 
      initialDate: selecteddate,
      firstDate: DateTime.now(), 
      lastDate: DateTime(DateTime.now().year + 5),
    );

    if(picked != null && picked != selecteddate){
      setState(() {
        selecteddate=picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Add New Task",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key:_formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(labelText: "Task Name:"),
                validator: (value){
                  if(value==null || value.isEmpty) {
                    return "Please enter the task name";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: descriptionController,
                decoration: const InputDecoration(labelText: "Description:"),
                validator: (value){
                  if(value==null || value.isEmpty) {
                    return "Please enter description";
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Due Date:",
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.calendar_today),
                    onPressed: ()=> _selectdate(context),
                  )
                ),
                readOnly: true,
                onTap: ()=> _selectdate(context),
                controller: TextEditingController(
                  text: DateFormat('yyyy-MM-dd').format(selecteddate),
                ),
                validator: (value) {
                  if(value==null || value.isEmpty) {
                    return "Please select a due date";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyHomePage(title: 'Task Management App',)),);
                  }, child: const Text("Task List"),),
                  ElevatedButton(onPressed: (){
                  // validate the form before submitting
                  if(_formKey.currentState?.validate() ?? false) {
                    // Form  is valid, perform your action
                    addTask();
                  }
                  }, child: const Text("Add"),
                  ),
                ]
              ),
            ],
          ),
        ),
      ),
    );
  }
}