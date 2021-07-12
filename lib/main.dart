import 'package:flutter/material.dart';
import 'package:study_flutter/widgets/base/ButtonPage.dart';
import 'package:study_flutter/widgets/base/TextPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 创建一个MD风格的APP
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              child: Text('文本'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return TextPage();
                }));
              },
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),
              ),
            ),
            TextButton(
              child: Text('按钮'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ButtonPage();
                }));
              },
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
