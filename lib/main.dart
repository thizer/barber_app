import 'dart:math';

import 'package:barber/layout.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';

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
              body1: TextStyle(fontSize: 14))),
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
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int i) {
          int rndInt = Random().nextInt(500);

          return GFListTile(
            avatar: GFAvatar(
              backgroundImage: NetworkImage('https://i.picsum.photos/id/$rndInt/200/300.jpg'),
              backgroundColor: Layout.light(),
            ),
            titleText: 'Fulano de tal',
            subTitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Corta cabelo como ninguém'),
                GFRating(
                  allowHalfRating: true,
                  value: 3,
                  onChanged: (double val) => null,
                  color: Layout.warning(),
                  borderColor: Layout.warning(),
                  size: 20,
                )
              ],
            ),
            icon: IconButton(
              icon: Icon(
                //Icons.send,
                Icons.more,
                color: Colors.black54,
              ),
              onPressed: () => null,
            ),
          );
        },
      ),

      // child: StreamBuilder<QuerySnapshot>(
      //   stream: Firestore.instance.collection('barber').snapshots(),
      //   builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
      //     if (snapshot.hasError) {
      //       return Text('Error: ${snapshot.error}');
      //     }

      //     switch (snapshot.connectionState) {
      //       case ConnectionState.waiting:
      //         return LinearProgressIndicator();
      //         break;
      //       default:
      //         return ListView(
      //           children: snapshot.data.documents.map((DocumentSnapshot doc) {
      //             return ListTile(
      //               leading: Icon(Icons.people, size: 52),
      //               title: Text(doc.data['nome']),
      //               subtitle: Text(doc.data['telefone']),
      //             );
      //           }).toList(),
      //         );
      //     }
      //   },
      // ),
    );

    return Layout.render(content, widget.title);
  }
}
