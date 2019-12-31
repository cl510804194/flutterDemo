import 'package:flutter/material.dart';

class ExpansionPanelListDemo extends StatefulWidget {
  ExpansionPanelListDemo({Key key}) : super(key: key);

  @override
  _ExpansionPanelListDemoState createState() => _ExpansionPanelListDemoState();
}

class _ExpansionPanelListDemoState extends State<ExpansionPanelListDemo> {
  List<int> mList;
  List<ExpandStateBean> expandStateList;
  _ExpansionPanelListDemoState() {
    mList = new List();
    expandStateList = new List();
    for (int i = 0; i < 10; i++) {
      mList.add(i);
      expandStateList.add(ExpandStateBean(i, false));
    }
  }

  _setCurrentIndex(int index, isExpand) {
    setState(() {
      //遍历可展开状态列表
      expandStateList.forEach((item) {
        if (item.index == index) {
          //取反，经典取反方法
          item.isOpen = !isExpand;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('展开闭合列表'),
        ),
        body: SingleChildScrollView(
          child: ExpansionPanelList(
            expansionCallback: (index, bol) {
              _setCurrentIndex(index, bol);
            },
            children: mList.map((index) {
              return ExpansionPanel(
                  headerBuilder: (context, isExpanded) {
                    return ListTile(
                      title: Text('this is No.$index'),
                    );
                  },
                  body: ListTile(
                    title: Text('expansion no.$index'),
                  ),
                  isExpanded: expandStateList[index].isOpen);
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class ExpandStateBean {
  var isOpen;
  int index;
  ExpandStateBean(this.index, this.isOpen);
}
