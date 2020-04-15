import 'dart:math';

import 'package:barber/layout.dart';
import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';

class PerfilProfissionalPage extends StatelessWidget {
  PerfilProfissionalPage({Key key, this.title}) : super(key: key);

  static String tag = 'perfil-profissional-page';

  final String title;

  @override
  Widget build(BuildContext context) {
    var elements = <Widget>[
      _getTitleContent(context),
      _getServicosContent(context),
      SizedBox(height: 10),
      Padding(
        padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 0),
        child: Text(
          'Comentários',
          style: Theme.of(context).textTheme.title.copyWith(color: Layout.secondary()),
        ),
      ),
    ];

    elements.addAll(_getComentariosListContent(context));

    var content = ListView(
      shrinkWrap: true,
      children: elements,
    );

    return Layout.render(
      content,
      title,
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('Chamar o profissional'),
        child: Icon(Icons.notifications),
      ),
    );
  }

  _getTitleContent(BuildContext context) {
    var rndInt = Random().nextInt(500);

    return GFListTile(
      avatar: GFAvatar(
        backgroundImage: NetworkImage('https://i.picsum.photos/id/$rndInt/200/300.jpg'),
        backgroundColor: Layout.light(),
        shape: GFAvatarShape.standard,
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
          Icons.contact_mail,
          color: Colors.black54,
        ),
        onPressed: () => null,
      ),
      color: Colors.white,
      margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
    );
  }

  _getServicosContent(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Serviços',
              style: Theme.of(context).textTheme.title,
            ),
            Text(
              'Sujeito a alterações',
              style: Theme.of(context).textTheme.caption,
            ),
            SizedBox(height: 15),
            Text('* Corte de cabelo R\$ 15,00'),
            Text('* Barba R\$ 15,00'),
            Text('* Bigode R\$ 15,00'),
            Text('* Massagem R\$ 15,00'),
          ],
        ),
      ),
    );
  }

  List<Widget> _getComentariosListContent(BuildContext context) {
    var comments = <Widget>[];

    for (var i = 0; i < 10; i++) {
      comments.add(GFListTile(
        titleText: 'João ninguém',
        description: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text('Eu achei muito bacana, parece ser um cara bem legal'),
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
        margin: const EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 10),
        padding: const EdgeInsets.all(10),
      ));
    }

    return comments;
  }
}
