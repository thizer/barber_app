import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';

class Layout {
  static Scaffold render(Widget content, String title) {
    return Scaffold(
      drawer: Layout.getDrawer(),
      appBar: GFAppBar(
        // leading: GFIconButton(
        //   icon: Icon(
        //     Icons.arrow_back_ios,
        //     color: Colors.white,
        //   ),
        //   onPressed: () {},
        //   type: GFButtonType.transparent,
        // ),
        title: Text(title),
        searchBar: true,
        actions: <Widget>[
          GFIconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onPressed: () {},
            type: GFButtonType.solid,
          ),
        ],
      ),
      body: content,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ),
    );
  }

  static getDrawer() {
    return GFDrawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          GFDrawerHeader(
            currentAccountPicture: GFAvatar(
              radius: 80.0,
              backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg"),
            ),
            otherAccountsPictures: <Widget>[
              Image(
                image: NetworkImage("https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg"),
                fit: BoxFit.cover,
              ),
              GFAvatar(
                child: Text("ab"),
              )
            ],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('user name', style: TextStyle(color: Colors.white)),
                Text('user@userid.com', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: null,
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: null,
          ),
        ],
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
