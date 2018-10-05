import 'package:flutter/material.dart';
import 'package:learn_animation/animation1.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        '/animation1': (context) => Animation1(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Widget> buttons = [
      MaterialButton(
        color: Theme.of(context).accentColor,
        onPressed: () => Navigator.of(context).pushNamed('/animation1'),
        child: Text('Animation 1'),
      ),
    ];

    return Scaffold(
        appBar: AppBar(title: Text('Animation')),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: buttons,
          ),
        ));
  }
}
