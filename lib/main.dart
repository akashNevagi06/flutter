import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.green,
         brightness: Brightness.light,
          accentColor: Colors.red
      ),
        
    );
  }
}
class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {

  String mytext= "Hello World";

  void changeText(){
    setState((){
      if(mytext.startsWith("H")){
        mytext="Welcome to my App";
      }else{
        mytext="Hello world";
      }
    });
  }

Widget bodyWidget(){
  return  Container(
    padding:const EdgeInsets.all(8.0),
    child: Center(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[
          new Text(mytext,style:new TextStyle(
            fontSize: 22.0
          ),
          ),
          
          
        ]
      )
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page "),
      ),
       body: bodyWidget(),
       floatingActionButton: FloatingActionButton(
         child: Icon(Icons.add),
         onPressed:changeText,
       ),
    );
  }
}

 