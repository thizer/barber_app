import 'dart:math';

import 'package:barber/layout.dart';
import 'package:barber/pages/perfil_profissional.dart';
import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  static String tag = 'home-page';

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
          var rndInt = Random().nextInt(500);

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
            color: Colors.white,
            margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
            icon: IconButton(
              icon: Icon(
                //Icons.send,
                Icons.more,
                color: Colors.black54,
              ),
              onPressed: () => Navigator.of(context).pushNamed(PerfilProfissionalPage.tag),
            ),
          );
        },
      ),
    );

    return Layout.render(content, widget.title);
  }
}
