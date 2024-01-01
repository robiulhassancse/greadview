import 'package:flutter/material.dart';

void main(){
  runApp( const myApp());
}
class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}
bool _iconBool = false;

IconData _iconLight= Icons.wb_sunny;
IconData _iconDark = Icons.nights_stay;

ThemeData _lightTheme = ThemeData(
  brightness:  Brightness.light,
  primarySwatch: Colors.amber,
);

ThemeData _darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.red,
);
class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      theme: _iconBool ? _darkTheme : _lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dark Mode'),
          actions: [
            IconButton(onPressed: (){
              _iconBool = !_iconBool;
              setState(() {

              });
            }, icon: Icon(_iconBool ? _iconDark : _iconLight))
          ],
        ),
        body:   Center(
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Switch mode', style: TextStyle(fontSize: 40),),
              ElevatedButton(onPressed: (){}, child: const Text('Tap here')),

            ],
          ),
        ),
      ),
    );
  }
}


