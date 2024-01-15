import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'text filed',
      theme: ThemeData(
  primarySwatch: Colors.brown,
      ),
      home: TextExample(),
    );
  }
}
class TextExample extends StatefulWidget {
  const TextExample({super.key});

  @override
  State<TextExample> createState() => _TextExampleState();
}

class _TextExampleState extends State<TextExample> {
  final _controllerfirstname = TextEditingController();
  final _controllerlastname = TextEditingController();
  String firstName = 'firstName';
  String LastName = 'LastName';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('INPUT FIELD'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            
            child: TextField(
              controller: _controllerfirstname,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              controller: _controllerlastname,
            ),
          ),

          Container(
            padding: EdgeInsets.all(10),
            child: ElevatedButton(onPressed: (){
              setState(() {
                firstName = _controllerfirstname.text;
                LastName = _controllerlastname.text;
              });
            }, child: const Text('Submit now')),
            
            ),
         Text('firstName: $firstName',
         style: TextStyle(
           fontWeight: FontWeight.bold,
           fontSize: 18.0,
           fontFamily: 'Roboto',
         ),
         ),
          Text('LastName : $LastName',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
            fontFamily: "Arial",
          ),
          ),




        ],
      ),
    );
  }
}





