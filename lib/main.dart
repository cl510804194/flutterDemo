import 'package:flutter/material.dart';
import 'package:jspang_demo/beatifulNavigator/pages.dart';
import './BottonNavigationWidget.dart';
import './BottonNavigationNoWidget/BottonNavigationNoWidget.dart';
import './beatifulNavigator/pages.dart';
import './glass/glass.dart';
import './status/status.dart';
import './diffcultInput/search_bar_demo.dart';
import './wrapDemo/wrap_demo.dart';
import './ExpansionTileDemo/expansionTile_demo.dart';
import './ExpansionPanelList/expansion_panel_list.dart';
import './curve/curve.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: MyHomePage(title: 'Demo'),
      routes: {
        '/Page0': (context) => BottonNavigationWidget(),
        '/Page1': (context) => BottomAppBarDemo(),
        '/Page2': (context) => FirstPage(),
        '/Page3': (context) => Glass(),
        '/Page4': (context) => KeepAliveDemo(),
        '/Page5': (context) => SearchBarDemo(),
        '/Page6': (context) => WrapDemo(),
        '/Page7': (context) => ExpansionTileDemo(),
        '/Page8': (context) => ExpansionPanelListDemo(),
        '/Page9': (context) => BiserCurve(),
      },
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
  List<String> widgets = [
    '底部导航',
    '不规则导航',
    '炫酷导航',
    '毛玻璃效果',
    '保持页面状态',
    '搜索框',
    '流式布局',
    '展开闭合',
    '展开闭合列表',
    '贝塞尔曲线'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView.separated(
          itemCount: widgets.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: ListTile(title: Text(widgets[index])),
              onTap: () {
                Navigator.pushNamed(context, '/Page' + index.toString());
              },
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
        ));
  }
}
