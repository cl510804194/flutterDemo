import 'package:flutter/material.dart';

class ExpansionTileDemo extends StatefulWidget {
  ExpansionTileDemo({Key key}) : super(key: key);

  @override
  _ExpansionTileDemoState createState() => _ExpansionTileDemoState();
}

class _ExpansionTileDemoState extends State<ExpansionTileDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('展开闭合'),
        ),
        body: Center(
          child: ExpansionTile(
            title: Text('Expansion Tile'),
            leading: Icon(Icons.ac_unit),
            backgroundColor: Colors.black12,
            children: <Widget>[
              ListTile(
                title: Text('list tile'),
                subtitle: Text('subtile'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
