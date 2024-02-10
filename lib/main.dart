import 'package:flutter/material.dart';
import 'package:task_management_application/addTask.dart';
import 'package:task_management_application/viewTask.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "My Tasks",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              height: screenHeight*0.7,
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: (){
                          //Handle the click event
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewTask()),);
                        },
                        child: Container(
                          height: 100,
                          width: screenWidth,
                          color: Colors.amber,
                          child: Container(
                            margin: EdgeInsets.all(7.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('User Research',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),textAlign: TextAlign.start,),
                                Text('Conduct user interviews or surveys to understand user needs and preferences.'),
                                LinearProgressIndicator(
                                  value: 0.8,
                                  backgroundColor: Colors.grey[300],
                                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                                ),
                              ],
                            ),
                            ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: () {
                          //Handle the click event
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewTask()),);
                        },
                        child: Container(
                          height: 100,
                          width: screenWidth,
                          color: Colors.amber,
                          child: Container(
                            margin: EdgeInsets.all(7.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('User Research',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),textAlign: TextAlign.start,),
                                Text('Conduct user interviews or surveys to understand user needs and preferences.'),
                                LinearProgressIndicator(
                                  value: 0.3,
                                  backgroundColor: Colors.grey[300],
                                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                                ),
                              ],
                            ),
                            ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: () {
                          //Handle the click event
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewTask()),);
                        },
                        child: Container(
                          height: 100,
                          width: screenWidth,
                          color: Colors.amber,
                          child: Container(
                            margin: EdgeInsets.all(7.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('User Research',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),textAlign: TextAlign.start,),
                                Text('Conduct user interviews or surveys to understand user needs and preferences.'),
                                LinearProgressIndicator(
                                  value: 0.8,
                                  backgroundColor: Colors.grey[300],
                                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                                ),
                              ],
                            ),
                            ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: () {
                          //Handle the click event
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewTask()),);
                        },
                        child: Container(
                          height: 100,
                          width: screenWidth,
                          color: Colors.amber,
                          child: Container(
                            margin: EdgeInsets.all(7.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('User Research',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),textAlign: TextAlign.start,),
                                Text('Conduct user interviews or surveys to understand user needs and preferences.'),
                                LinearProgressIndicator(
                                  value: 0.8,
                                  backgroundColor: Colors.grey[300],
                                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                                ),
                              ],
                            ),
                            ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: () {
                          //Handle the click event
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewTask()),);
                        },
                        child: Container(
                          height: 100,
                          width: screenWidth,
                          color: Colors.amber,
                          child: Container(
                            margin: EdgeInsets.all(7.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('User Research',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),textAlign: TextAlign.start,),
                                Text('Conduct user interviews or surveys to understand user needs and preferences.'),
                                LinearProgressIndicator(
                                  value: 0.8,
                                  backgroundColor: Colors.grey[300],
                                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                                ),
                              ],
                            ),
                            ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: () {
                          //Handle the click event
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewTask()),);
                        },
                        child: Container(
                          height: 100,
                          width: screenWidth,
                          color: Colors.amber,
                          child: Container(
                            margin: EdgeInsets.all(7.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('User Research',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),textAlign: TextAlign.start,),
                                Text('Conduct user interviews or surveys to understand user needs and preferences.'),
                                LinearProgressIndicator(
                                  value: 0.8,
                                  backgroundColor: Colors.grey[300],
                                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                                ),
                              ],
                            ),
                            ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: () {
                          //Handle the click event
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewTask()),);
                        },
                        child: Container(
                          height: 100,
                          width: screenWidth,
                          color: Colors.amber,
                          child: Container(
                            margin: EdgeInsets.all(7.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('User Research',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),textAlign: TextAlign.start,),
                                Text('Conduct user interviews or surveys to understand user needs and preferences.'),
                                LinearProgressIndicator(
                                  value: 0.8,
                                  backgroundColor: Colors.grey[300],
                                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                                ),
                              ],
                            ),
                            ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 40,),
            Positioned(
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AddTask()),);
                },
                child: Text('Add a New Task'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
