import 'package:flutter/material.dart';
import 'package:study_flutter/sample/widget/basic/ButtonSample.dart';

/// Snackbars
class GetBottomsheetsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bottomsheets"),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                spacing: 16.0,
                runSpacing: 16.0,
                children: <Widget>[
                  ElevatedButton1(
                    data: "Bottomsheets",
                    onPressed: () => _snackbars1(),
                  ),
                ],
              ),
            ],
          ),
        ));
  }

  void _snackbars1(){

  }

}