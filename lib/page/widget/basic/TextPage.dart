import 'package:flutter/material.dart';
import '/sample/widget/basic/TextSample.dart';

/// 文本展示
class TextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("文本示例"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(5.0), child: Text1()),
          Padding(padding: EdgeInsets.all(5.0), child: TextRich1()),
          Padding(padding: EdgeInsets.all(5.0), child: DefaultTextStyle1())
        ],
      ),
    );
  }
}

