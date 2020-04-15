import 'package:barber/layout.dart';
import 'package:barber/pages/home.dart';
import 'package:barber/pages/perfil_profissional.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String title = 'Barber';

    return MaterialApp(
      theme: ThemeData(
          primaryColor: Layout.primary(),
          accentColor: Layout.secondary(),
          // backgroundColor: Colors.black12,
          textTheme: TextTheme(
              headline: TextStyle(fontWeight: FontWeight.bold, fontSize: 48),
              title: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
              body1: TextStyle(fontSize: 14))),
      initialRoute: MyHomePage.tag,
      routes: {
        MyHomePage.tag: (context) => MyHomePage(title: title),
        PerfilProfissionalPage.tag: (context) => PerfilProfissionalPage(title: title),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
