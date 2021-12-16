import 'package:flutter/material.dart';
import '/sample/widget/basic/ButtonSample.dart';

/// 按钮展示
class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("按钮示例"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(5.0), child: TextButton1()),
          Padding(padding: EdgeInsets.all(5.0), child: OutlinedButton1()),
          Padding(padding: EdgeInsets.all(5.0), child: ElevatedButton1()),
          Padding(padding: EdgeInsets.all(5.0), child: IconButton1()),
          Padding(padding: EdgeInsets.all(5.0), child: OutlinedButtonIcon()),
        ],
      ),
    );
  }
}