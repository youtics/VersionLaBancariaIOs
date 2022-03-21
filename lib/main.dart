import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'La Bancaria',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: PantallaPrincipal(),
    );
  }
}
  class PantallaPrincipal extends StatelessWidget{
      @override
      Widget build(BuildContext context)
      {
        return Scaffold(
          appBar: AppBar(title: Text('Home'),),
          body: Center(
            // ignore: deprecated_member_use
            child: RaisedButton(onPressed: () {

            },
            child: Text('To page 2'),),
          ),
        );
      }
  }
