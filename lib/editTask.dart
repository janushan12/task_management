import 'package:flutter/material.dart';
import 'package:task_management_application/main.dart';

class EditTask extends StatefulWidget {
  const EditTask({super.key});

  @override
  State<EditTask> createState() => _EditTaskState();
}

class _EditTaskState extends State<EditTask> {
  final _formKey=GlobalKey<FormState>();
  TextEditingController nameController=TextEditingController();
  TextEditingController descriptionController=TextEditingController();
  TextEditingController statusController = TextEditingController();
  DateTime selecteddate=DateTime.now();

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
        title: Text(
          "Edit Task",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Form(
          key:_formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(labelText: "Task Name:"),
                validator: (value){
                  if(value==null || value.isEmpty) {
                    return "Please enter the task name";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: descriptionController,
                decoration: InputDecoration(labelText: "Description:"),
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
                    icon: Icon(Icons.calendar_today),
                    onPressed: ()=> _selectdate(context),
                  )
                ),
                readOnly: true,
                onTap: ()=> _selectdate(context),
                controller: TextEditingController(
                  text: "${selecteddate.toLocal()}".split(' ')[0],
                ),
                validator: (value) {
                  if(value==null || value.isEmpty) {
                    return "Please select a due date";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: statusController,
                decoration: InputDecoration(labelText: "Completion Status:"),
                validator: (value){
                  if(value==null || value.isEmpty) {
                    return "Please enter value";
                  }
                  return null;
                },
              ),
              SizedBox(height: 20,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyHomePage(title: 'Task Management App',)),);
                    }, child: Text("Task List"),),
                    ElevatedButton(onPressed: (){
                    // validate the form before submitting
                    if(_formKey.currentState?.validate() ?? false) {
                      // Form  is valid, perform your action
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyHomePage(title: 'Task Management App',)),);
                    }
                    }, child: Text("Save"),
                    ),
                  ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}