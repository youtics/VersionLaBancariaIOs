import 'package:flutter/material.dart';
import 'package:la_bancaria_mdp/HomeLaBancaria.dart';

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
          appBar: AppBar(title: Text('La Bancaria MDP'),
            actions: <Widget>[
              IconButton(
                  onPressed: ()_IrWebSite,
                  icon: Icon(Icons.home))
            ],

          ),
          body: Center(
            // ignore: deprecated_member_use
            child: RaisedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePageState()));
            },
            child: Text('Noticias'),),
          ),
        );
      }
      // ignore: non_constant_identifier_names

  void _IrWebSite() {

  }
}
