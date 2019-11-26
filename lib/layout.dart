import 'package:flutter/material.dart';

class Layout {

  static Scaffold render(Widget content, String title) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: content,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  static Color primary([double opacity = 1]) => Colors.grey[900].withOpacity(opacity);
  static Color primaryLight([double opacity = 1]) => Color(0x484848).withOpacity(opacity);
  static Color primaryDark([double opacity = 1]) => Color(0x000000).withOpacity(opacity);

  static Color secondary([double opacity = 1]) => Colors.blue[900].withOpacity(opacity);
  static Color secondaryLight([double opacity = 1]) => Color(0x5472d3).withOpacity(opacity);
  static Color secondaryDark([double opacity = 1]) => Color(0x002171).withOpacity(opacity);

  static Color light([double opacity = 1]) => Color.fromRGBO(230, 230, 230, opacity);
  static Color dark([double opacity = 1]) => primaryDark(opacity);

  static Color danger([double opacity = 1]) => Color.fromRGBO(217, 74, 74, opacity);
  static Color success([double opacity = 1]) => Color.fromRGBO(5, 100, 50, opacity);
  static Color info([double opacity = 1]) => Color.fromRGBO(100, 150, 255, opacity);
  static Color warning([double opacity = 1]) => Color.fromRGBO(250, 200, 70, opacity);
}