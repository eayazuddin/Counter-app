import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Counter App",
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() {
   return MyHomePageUI();
  }
}
class MyHomePageUI extends State<MyHomePage> {

  int CountNumber = 0;

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         centerTitle: true,
         title: Text("Counter app"),
       ),
       body: Center(
         child: Text(CountNumber.toString(),style: TextStyle(fontSize: 32),)
       ),

       floatingActionButton: FloatingActionButton(
         child: Icon(Icons.add),
         onPressed: (){
           setState(() {
             CountNumber = CountNumber+1;
           });
         },

       ),

     );
  }
}