import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// create by 张风捷特烈 on 2020-03-29
/// contact me by email 1981462002@qq.com
/// 说明:
//    {
//      "widgetId": 168,
//      "name": '文字样式-TextTheme',
//      "priority": 1,
//      "subtitle":
//          "",
//    }
class TextCupertinoTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var queryData = CupertinoTheme.of(context).textTheme;
    var styles = {
      "tabLabelTextStyle: ": queryData.tabLabelTextStyle,
      "actionTextStyle: ": queryData.actionTextStyle,
      "navActionTextStyle: ": queryData.navActionTextStyle,
      "textStyle: ": queryData.textStyle,
      "navTitleTextStyle: ": queryData.navTitleTextStyle,
      "pickerTextStyle: ": queryData.pickerTextStyle,
      "dateTimePickerTextStyle: ": queryData.dateTimePickerTextStyle,
      "navLargeTitleTextStyle: ": queryData.navLargeTitleTextStyle,
    };

    return Container(
      child: Column(
        children: styles.keys.map((e) => buildItem(e, styles[e])).toList(),
      ),
    );
  }

  Widget buildItem(String e, TextStyle style) => Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  e,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  "@toly",
                  style: style,
                )
              ],
            ),
          ),
          Divider(
            height: 1,
          )
        ],
      );
}

//    {
//      "widgetId": 168,
//      "name": 'CupertinoThemeData的toString',
//      "priority": 2,
//      "subtitle":
//          "",
//    }
class CustomCupertinoTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var queryData = CupertinoTheme.of(context);
    return Container(
      child: Text(queryData.toString(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          )),
    );
  }
}
