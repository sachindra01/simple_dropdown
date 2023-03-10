import 'package:flutter/material.dart';
import 'package:simple_dropdown/simple_dropdown.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple dropdown',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Simple dropdown'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,  required this.title});

 
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  dynamic selectedValue;

 
  @override
  Widget build(BuildContext context) {

   
    return Scaffold(
      appBar: AppBar(
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child:SimpleDropdown(
              hintText:Text('hello',style: Theme.of(context).textTheme.headline3?.copyWith(),),
              options: const [1,2,3],
              value: selectedValue,
              onChanged: (value){
              setState(() {
                  selectedValue = value;
              });
              },
              getLabel: (value){
              return value.toString();
              },
            ),
          ),
        ],
      ),
    );
  }
}
