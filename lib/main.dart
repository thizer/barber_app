import 'package:barber/layout.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    String title = 'Barber';

    return MaterialApp(
      title: title,
      theme: ThemeData(
        primaryColor: Layout.primary(),
        accentColor: Layout.secondary(),
        textTheme: TextTheme(
          headline: TextStyle(fontWeight: FontWeight.bold, fontSize: 48),
          title: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
          body1: TextStyle(fontSize: 14)
        )
      ),
      home: MyHomePage(title: title),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    Widget content = Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('You have pushed the button this many times:'),
          Text('0', style: Theme.of(context).textTheme.display1),
          Text('Texto 1', style: TextStyle(color: Layout.light())),
          Text('Texto 1', style: TextStyle(color: Layout.dark())),
          Text('Texto 1', style: TextStyle(color: Layout.danger())),
          Text('Texto 1', style: TextStyle(color: Layout.success())),
          Text('Texto 1', style: TextStyle(color: Layout.info())),
          Text('Texto 1', style: TextStyle(color: Layout.warning())),
        ],
      ),
    );

    return Layout.render(content, widget.title);
  }
}
