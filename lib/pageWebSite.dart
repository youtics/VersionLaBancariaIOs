import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'La Bancaria',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'La Bancaria Sec. Mar del Plata'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
              onPressed: _Add,
              icon: Icon(Icons.home))
        ],
      ),
      body: const WebView(
        initialUrl: "https://labancaria.obliviondev.com.ar/",
        javascriptMode: JavascriptMode.unrestricted,
      ),

    );
  }
  void _Add()
  {

  }
}
